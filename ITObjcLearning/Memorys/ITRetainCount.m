//
//  ITRetainCount.m
//  InterviewTopics
//
//  Created by 许龙 on 2018/6/3.
//  Copyright © 2018年 许龙. All rights reserved.
//

#import "ITRetainCount.h"

@interface ITRetainCount ()

@property (nonatomic, retain) NSString *refrence1;
@property (nonatomic, copy) NSString *refrence2;

@end

/**
 引用计数如何存储：
 1、TaggedPointer对象，直接将指针值作为引用计数返回；
 2、当前设备是 64bit，并且使用 Objective-C 2.0，那么会使用其isa指针的一部分空间(extra_rc)来储存引用计数, retainCount = extra_rc + 1；
 3、否则，或者 extra_rc 储存不下了，runtime 就会使用一个散列表(RefcountMap)来管理引用计数；

 采用散列表管理引用计数的好处：
 1、对象用内存块的分配无需考虑内存块头部
 2、引用计数表各记录中存有内存地址，可从各个记录追溯到各对象的内存块
 */
@implementation ITRetainCount

- (instancetype)init {
    self = [super init];
    if (self) {
        [self testAutorelease];
        [self testAutoreleaseOurs];
        [self testRetainCopy];
    }
    return self;
}

// MRC
- (void)testAutorelease {
    // 非 alloc/retain/copy/mutableCopy 初始化对象
    // array 类方法初始化对象时，把对象加入了自动释放池，由自动释放池管理对象
    // array = alloc + autorelease
    NSMutableArray *arr = [NSMutableArray array];
    NSLog(@"arr retain count : %zd", [arr retainCount]);
    
    // 此处不需要 release， 如果调用了 release， 会出现多次释放闪退
    // 非自己管理的对象，不可以释放
    //[arr release];
    
    // 如果需要自己管理改对象生命周期，需要 retain 操作
    [arr retain];
    NSLog(@"arr retain count : %zd", [arr retainCount]);
    
    // stringWithFormat = alloc + autorelease
    // retain count = 1
    // 再次 retain 后，retain count + 1 = 2
    NSString *str = [[NSString stringWithFormat:@"dragonxulong"] retain];
    NSLog(@"str retain count : %zd", [str retainCount]);
    
    // Note:
    // str 对象被 arr 强引用一次，retain count + 1 = 3
    [arr addObject:str];
    NSLog(@"str retain count : %zd", [str retainCount]);
    
    // str 对象被 arr 移除引用，retain count - 1 = 2
    [arr removeAllObjects];
    NSLog(@"str retain count : %zd", [str retainCount]);
    
    // str 不需要时，需要手动释放
    [str release];
    NSLog(@"str retain count : %zd", [str retainCount]);
    
    // 不需要时，释放
    [arr release];
    NSLog(@"arr retain count : %zd", [arr retainCount]);
}

/**
 NSAutoreleasePool 自己不创建的话
 当前 NSRunloop 会自动 Push 一个 autoreleasePool
 所有直接调用 autorelease 方法，是添加到当前 runloop 下的 autoreleasePool 中
 */
- (void)testAutoreleaseOurs {
    for (NSInteger i = 0; i < 10000; i++) {
        // 创建的自动释放池
        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
        
        // 调用 autorelease 方法后，o 对象就会被放入到 pool 中
        NSObject *o = [[NSObject alloc] init];
        [o autorelease];
        
        // 清空自动释放池中所有的对象
        [pool drain];
        // 不能对 NSAutoreleasePool 对象调用 autorelease 方法，因为它已经被 override 抛出 exception
        //[pool autorelease];
    }
}

- (void)testRetainCopy {
    NSString *str = [NSString stringWithFormat:@"dragonxulong"];
    // 赋值的时候会自动做一次 retain 操作
    self.refrence1 = str;
    NSLog(@"str retain count : %zd", [str retainCount]);
    
    // 赋值的时候会自动做一次 copy 操作
    self.refrence2 = str;
    NSLog(@"str retain count : %zd", [str retainCount]);
}

@end
