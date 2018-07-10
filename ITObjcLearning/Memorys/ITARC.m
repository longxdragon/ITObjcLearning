//
//  ITARC.m
//  InterviewTopics
//
//  Created by 许龙 on 2018/6/7.
//  Copyright © 2018年 许龙. All rights reserved.
//

#import "ITARC.h"

// https://segmentfault.com/a/1190000004943276
/**
 1、ARC是编译器（时）特性，而不是运行时特性，更不是垃圾回收器(GC)，编译时插入相应的 retain release
 2、weak 的释放特性是基于 runtime 实现的
 3、runtime 也针对的内存管理做了优化，比如 autorelease 的快速释放机制。
 */
@implementation ITARC

extern uintptr_t _objc_rootRetainCount(id obj);
extern void _objc_autoreleasePoolPrint(void);

- (instancetype)init {
    self = [super init];
    if (self) {
        // __strong
//        [self testStrong];
        // __weak
//        [self testWeak];
        // __unsafe__unretained
//        [self testUnsafeUnRetained];
        // __autoreleasing
        [self testAutorelease];
        
//        [self testFactoryMethod1];
//        [self testFactoryMethod2];
    }
    return self;
}

/*
 默认是有 __strong 的修饰符的
 o1 依然强指针 指向内存
 */
- (void)testStrong {
    NSObject *o = [NSObject new];
    NSObject *o1 = o;
    o = nil;
    NSLog(@"%@", o1);
}

/**
 o 强指针释放，内存就被释放，__weak 修饰的弱指针自动被置为 nil
 */
- (void)testWeak {
    NSObject *o = [NSObject new];
    
    __weak NSObject *o1 = o;
    o = nil;
    NSLog(@"%@", o1);
}

/*
 o 强指针释放，内存就被释放，__unsafe_unretained 修饰的指针不会置为 nil， 就出现了野指针
 这个时候访问野指针就会报错 EXC_BAD_ACCESS
 __unsafe_unretained 不会有 HashTable 自动清空指针，所有效率比 __weak 要高，必要的时候可以使用
 除非确保 __unsafe_unretained 修饰的指针指向的内存，访问的时候一直存在
 */
- (void)testUnsafeUnRetained {
    __unsafe_unretained NSMutableArray *o1 = nil;
    {
        NSMutableArray *o = [[NSMutableArray alloc] init];
        NSLog(@"%ld", _objc_rootRetainCount(o));
        o1 = o;
        // 除了作用域，o 强指针释放
    }
    NSLog(@"%@", o1);
}

- (void)testAutorelease {
    NSObject *o = [NSObject new];
    
    // __autoreleasing 关键字，让 o1 执行 autorelase 方法
    __autoreleasing NSObject *o1 = o;
    o = nil;
    NSLog(@"%@", o1);
    
    /**
     系统默认加上 __autoreleasing 的情况：
     
     1、对象作为函数(alloc/new/copy/mutableCopy除外)的返回值，编译器会自动将其注册到自动释放池。
     2、指针的指针类型在作为函数(alloc/new/copy/mutableCopy除外)的参数时会被附加上__autoreleasing修饰符。(其实满足的也是第一条，指针也是作为返回值返回)
     */
    // 1
    id arr = [NSMutableArray array];
    NSLog(@"%ld", _objc_rootRetainCount(arr));
    
    // 2
    /**
     - (void)doSomethingError:(NSError **)error;
     
     id obj; 等同于 id __strong obj;
     NSError **error; 等同于 NSError * __autoreleasing *error;
     
     我们都知道：赋值对象指针时，所有权修饰符必须一致
     这边定义的时候是 NSError __strong *error = nil，传入的却是 NSError * __autoreleasing，为什么没报错？
     
     虽然上面定义的是 NSError __strong *error = nil，但是在编译的时候，编译器做了一次转化
     NSError * __autoreleasing *tmp = &error;
     _objc_msgSend(self, @selector(doSomethingError:));
     error = tmp;
     */
    NSError *e1 = nil;
    BOOL result = [self doSomethingError:&e1];
    /**
     建议判断是否执行成功，根据返回的 result 去判断。
     因为如果不关心 error 是什么的话，是可以直接传 Null 对象，来忽略错误信息的返回的
     */
    NSLog(@"e1 : %ld", _objc_rootRetainCount(e1));
    NSLog(@"e1 : %d %@", result, e1);
    
    NSError *e2 = nil;
    BOOL result1 = [self doSomethingError2:e2];
    NSLog(@"e2 : %d %@", result1, e2);
    
    
    /**
     MRC：
     NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
     id a = [[NSMutableArray alloc] init];
     [a autorelease];
     [pool drain];
     
     编译器：
     id pool = objc_autoreleasePoolPush();
     id a = objc_msgSend(NSMutableArray, @selector(alloc));
     objc_msgSend(a, @selector(init));
     objc_autorelease(a); // __autoreleasing 会转换成这个
     objc_autoreleasePoolPop(pool);
     
     ARC：
     用 @autoreleasepool 块替代 NSAutoreleasePool 类，用附有 __autoreleasing 修饰符的变量代替调用 autorelease 方法。
     未调用 autorelease 方法的对象是不会放入到 autoreleasepool 中的
     */
    __weak id aa;
    @autoreleasepool {
        id __autoreleasing a = [[NSMutableArray alloc] init];
        aa = a;
    }
    NSLog(@"%@", aa);
}

- (void)testFactoryMethod1 {
    id __unsafe_unretained o1;
    {
        // arrary 方法中，会执行 objc_autoreleaseReturnValue，返回被注册到 autoreleasepool 中的对象
        // o 对象是 __strong 修饰的，赋值的时候，会自动执行 objc_retainAutoreleasedReturnValue
        // 理论上，o 对象指向的内存的 retainCount = 2
        //
        // 实际测试，retainCount = 1
        // https://blog.sunnyxx.com/2014/10/15/behind-autorelease/
        // runtime 对 autorelease 返回值做了优化策略
        // 具体见：ITMutableArray 的论证
        //
        id o = [NSMutableArray array];
        NSLog(@"%ld", _objc_rootRetainCount(o));
        o1 = o;
    }
    NSLog(@"%@", o1);
}

/**
 o 出了作用域，强指针释放，由于 arrayWithObjects: 工厂方法生成的对象，runtime 未对 autorelease 返回值做了优化策略
 所以内存还在 autoreleasepool 中，此时访问 o1，不会出现野指针问题，打印正常
 */
- (void)testFactoryMethod2 {
    __unsafe_unretained NSMutableArray *o1 = nil;
    {
        // arrayWithObjects: 工厂方法生成的对象，runtime 未对 autorelease 返回值做了优化策略
        // 具体见：ITMutableArray 的论证
        //
        NSMutableArray *o = [NSMutableArray arrayWithObjects:@"1", nil];
        NSLog(@"%ld", _objc_rootRetainCount(o));
        o1 = o;
    }
    NSLog(@"%@", o1);
}

/**
 NSError **error; 等同于 NSError * __autoreleasing *error;
 
 QA:
 传入的为什么是指针的指针类型，而不是error指针
 AW:
 因为如果传入的是 error 的指针变量，方法执行的时候，参数实际会做一次指针的拷贝， error 实际是局部指针变量，在方法体里进行赋值后，出了作用域就会释放
 如果传入的是指针的指针，方法里拷贝了一份指针的指针，但是 *error 就是实际的指针，就可以修改实际的指针了
 
 p1 -> p -> memory 传入方法的是 p1 指针，被拷贝了一个指针 p2，现在就变成 p2 -> p -> memory
 修改 *p1（*p1 就是 p） 的值，指向新的内存 memory2，最终 p -> memory2
 
 QA:
 指针的指针类型为什么作为参数的时候，会被默认指定为 __autoreleasing ?
 AW:
 根据内存管理的原则：非自己生成的对象，给自动释放池管理。指针会被重新赋值（类似返回结果的功能）
 虽然也可以使用 __strong，但苹果不建议这么做
 */
- (BOOL)doSomethingError:(NSError **)error {
    if (error != NULL) {
        *error = [NSError errorWithDomain:@"Error" code:1 userInfo:nil];
    }
    return NO;
}

/**
 p -> memory 传入方法的是 p 指针，被拷贝了一个指针 p1，现在就变成 p1 -> memory
 修改 p1 的值，指向新的内存 memory2，最终 p1 -> memory2，但是实际上 p 指向的内存并没有变，依然是 p -> memory
 */
- (BOOL)doSomethingError2:(NSError __autoreleasing *)error {
    if (error != NULL) {
        error = [NSError errorWithDomain:@"Error" code:1 userInfo:nil];
    }
    return NO;
}

@end
