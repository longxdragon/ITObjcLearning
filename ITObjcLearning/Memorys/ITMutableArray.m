//
//  ITMutableArray.m
//  ITObjcLearning
//
//  Created by 许龙 on 2018/6/27.
//  Copyright © 2018 许龙. All rights reserved.
//

#import "ITMutableArray.h"

/**
 Note:
 
 1、alloc/new/copy/mutableCopy 方法生成的对象，返回的时候不会调用 _objc_autoreleaseReturnValue
 相应的，在对象赋值的时候，也不会调用 _objc_retainAutoreleasedReturnValue
 
 2、其他方法生成的对象，返回的时候编译器会自动加上 _objc_autoreleaseReturnValue，相应的，在对象赋值
 的时候，编译器也会相应加上 _objc_retainAutoreleasedReturnValue
 
 3、_objc_autoreleaseReturnValue、_objc_retainAutoreleasedReturnValue 组合起来，runtime 做了
 快速释放机制，达到内存最优化；详见：https://blog.sunnyxx.com/2014/10/15/behind-autorelease/
 */
@implementation ITMutableArray

- (instancetype)init {
    self = [super init];
    if (self) {
        [self testObject];
        [self testObject1];
        [self testObject2];
        [self testObject3];
        [self test4];
        [self test5];
    }
    return self;
}

#pragma mark - Test object

/**
 id obj = objc_sendMsg(NSMutableArray, @selector(array));
 return obj;
 
 Note:
 编译器应该转化成：
 id obj = objc_sendMsg(NSMutableArray, @selector(array));
 _objc_retainAutoreleasedReturnValue(obj);
 _objc_autoreleaseReturnValue(obj);
 return obj;
 
 这边的
 1、_objc_autoreleaseReturnValue
 2、_objc_retainAutoreleasedReturnValue
 3、_objc_autoreleaseReturnValue
 1、2抵消，只剩下3，等同于执行了一次 _objc_autoreleaseReturnValue，其实就是执行了1
 编译器优化，直接去除2、3步骤，减少方法的调用
 
 */
+ (id)object {
    // 没有执行 _objc_retainAutoreleasedReturnValue
    // 会被放入 autoreleasepool 中
    // retainCount = 1
    //
    // 这里的 return 方法不会走 _objc_autoreleaseReturnValue
    return [NSMutableArray array];
}

/**
 id o = objc_sendMsg(NSMutableArray, @seletor(object));
 _objc_retainAutoreleasedReturnValue(o)
 */
- (void)testObject {
    // o 强指针赋值后，会里面执行 _objc_retainAutoreleasedReturnValue
    // retainCount + 1 = 2
    id o = [[self class] object];
    // 2
    NSLog(@"testObject - %ld", CFGetRetainCount((__bridge CFTypeRef)o));
}

#pragma mark - Test object1

/**
 id obj = objc_sendMsg(NSMutableArray, @selector(array));
 _objc_retainAutoreleasedReturnValue(obj);
 _objc_retain(obj);
 _objc_storeStrong(obj);
 return _objc_autoreleaseReturnValue(obj)
 */
+ (id)object1 {
    // o 赋值后，立马执行 _objc_retainAutoreleasedReturnValue
    // 虽然 array 方法在返回的时候，调用了 _objc_autoreleaseReturnValue 方法
    // 但是 runtime 做了优化，没有走 _objc_autorelease 和 _objc_retain 方法
    // retainCount = 1
    id o = [NSMutableArray array];
    // 1
    NSLog(@"object1 - %ld", CFGetRetainCount((__bridge CFTypeRef)o));
    
    // 猜测是对变量 o 的处理
    // _objc_retain
    // _objc_storeStrong
    //
    // 因为方法名不是 alloc/new/copy/mutableCopy 开头的
    // return _objc_autoreleaseReturnValue(o)
    return o;
}

/**
 id o = objc_sendMsg(NSMutableArray, @seletor(object1));
 _objc_retainAutoreleasedReturnValue(o)
 */
- (void)testObject1 {
    // o 强指针赋值后，会里面执行 _objc_retainAutoreleasedReturnValue
    // 配合 object1 方法返回的时候调用了 _objc_autoreleaseReturnValue
    // retainCount 不会改变， retainCount = 1
    id o = [[self class] object1];
    // 1
    NSLog(@"testObject1 - %ld", CFGetRetainCount((__bridge CFTypeRef)o));
}

#pragma mark - Test object2

/**
 id obj = objc_sendMsg(NSMutableArray, @selector(alloc));
 objc_sendMsg(obj, @selector(init));
 return _objc_autoreleaseReturnValue(obj)
 */
+ (id)object2 {
    // alloc 初始化，retainCount = 1
    // 因为方法名不是 alloc/new/copy/mutableCopy 开头的
    // 所以返回的时候会执行 _objc_autoreleaseReturnValue
    return [[NSMutableArray alloc] init];
}

/**
 id o = objc_sendMsg(NSMutableArray, @seletor(object2));
 _objc_retainAutoreleasedReturnValue(o)
 */
- (void)testObject2 {
    // o 强指针赋值后，会里面执行 _objc_retainAutoreleasedReturnValue
    // 配合 object2 方法返回的时候调用了 _objc_autoreleaseReturnValue
    // retainCount 不会改变， retainCount = 1
    id o = [[self class] object2];
    // 1
    NSLog(@"testObject2 - %ld", CFGetRetainCount((__bridge CFTypeRef)o));
}

#pragma mark - Test object3

/**
 id obj = objc_sendMsg(NSMutableArray, @selector(array));
 _objc_retainAutoreleasedReturnValue(obj);
 _objc_retain(obj);
 _objc_storeStrong(obj);
 return _objc_autoreleaseReturnValue(obj)
 */
+ (id)object3 {
    // arrayWithObjects: 方法返回没有做 autorelease 的优化，retainCount = 2
    id o = [NSMutableArray arrayWithObjects:@"1", nil];
    // 2
    NSLog(@"object3 - %ld", CFGetRetainCount((__bridge CFTypeRef)o));
    return o;
}

/**
 id o = objc_sendMsg(NSMutableArray, @seletor(object3));
 _objc_retainAutoreleasedReturnValue(o)
 */
- (void)testObject3 {
    // o 强指针赋值后，会里面执行 _objc_retainAutoreleasedReturnValue
    // 配合 object2 方法返回的时候调用了 _objc_autoreleaseReturnValue
    // retainCount 不会改变， retainCount = 2
    id o = [[self class] object3];
    // 2
    NSLog(@"testObject3 - %ld", CFGetRetainCount((__bridge CFTypeRef)o));
}

#pragma mark - Test alloc object

/**
 id obj = objc_sendMsg(NSMutableArray, @selector(array));
 return _objc_retainAutoreleasedReturnValue(obj);
 */
+ (id)allocObject {
    // array 方法里的 _objc_autoreleaseReturnValue 配合 _objc_retainAutoreleasedReturnValue
    // 达到 autorelease 返回值的快速释放机制
    // 返回的对象 retainCount = 1
    return (id)[NSMutableArray array];
}

/**
 id o = objc_sendMsg(NSMutableArray, @selector(allocObject));
 _objc_storeStrong
 */
- (void)test4 {
    // 会发现，编译不会在 alloc/new/copy/mutableCopy 方法后面补上 _objc_retainAutoreleasedReturnValue
    // 所以不是 o 是强引用，就一定会影响 retainCount
    id o = [[self class] allocObject];
    // 1
    NSLog(@"test4 - %ld", CFGetRetainCount((__bridge CFTypeRef)o));
}

#pragma mark - Test alloc object1

/**
 id obj = objc_sendMsg(NSMutableArray, @selector(array));
 _objc_retainAutoreleasedReturnValue(obj);
 _objc_retain(obj);
 _objc_storeStrong(obj);
 return obj;
 */
+ (id)allocObject1 {
    // 以 alloc 开头，返回的时候编译器不会插入 _objc_autoreleaseReturnValue 方法
    id o = [NSMutableArray array];
    return o;
}

/**
 id o = objc_sendMsg(NSMutableArray, @selector(allocObject));
 _objc_storeStrong
 */
- (void)test5 {
    // 会发现，编译不会在 alloc/new/copy/mutableCopy 方法后面补上 _objc_retainAutoreleasedReturnValue
    // 所以不是 o 是强引用，就一定会影响 retainCount
    id o = [[self class] allocObject1];
    // 1
    NSLog(@"test5 - %ld", CFGetRetainCount((__bridge CFTypeRef)o));
}

@end
