//
//  ITRetainCount.m
//  InterviewTopics
//
//  Created by 许龙 on 2018/6/3.
//  Copyright © 2018年 许龙. All rights reserved.
//

#import "ITRetainCount.h"

@implementation ITRetainCount

- (instancetype)init {
    self = [super init];
    if (self) {
        [self testAutorelease];
        [self testAutoreleaseOurs];
    }
    return self;
}

// MRC
- (void)testAutorelease {
    // 非 alloc/retain/copy/mutableCopy 初始化对象
    // array 类方法初始化对象时，把对象加入了自动释放池，由自动释放池管理对象
    // array = alloc + autorelease
    NSMutableArray *arr = [NSMutableArray array];
    NSLog(@"retain count : %zd", [arr retainCount]);
    // 所以就不需要 release， 如果调用了 release， 会出现多次释放闪退
    //[arr release];
    
    // 如果需要自己管理改对象生命周期，需要 retain 操作
    [arr retain];
    NSLog(@"retain count : %zd", [arr retainCount]);

    // 不需要时，释放
    [arr release];
    NSLog(@"retain count : %zd", [arr retainCount]);
}

// NSAutoreleasePool 自己不创建的话
// 当前 NSRunloop 会自动 Push 一个 autoreleasePool
// 所有直接调用 autorelease 方法，是添加到当前 runloop 下的 autoreleasePool 中
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



@end
