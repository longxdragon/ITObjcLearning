//
//  ITARC.m
//  InterviewTopics
//
//  Created by 许龙 on 2018/6/7.
//  Copyright © 2018年 许龙. All rights reserved.
//

#import "ITARC.h"

// https://segmentfault.com/a/1190000004943276
@implementation ITARC

- (instancetype)init {
    self = [super init];
    if (self) {
        [self testStrong];
        [self testWeak];
//        [self testUnsafeUnRetained];
//        [self testAutorelease];
        [self testAutorelease2];
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
        NSLog(@"%ld", CFGetRetainCount((__bridge CFTypeRef)o));
        o1 = o;
        // 除了作用域，o 强指针释放
    }
    NSLog(@"%@", o1);
}

/**
 同上
 */
- (void)testAutorelease {
    __unsafe_unretained NSMutableArray *o1 = nil;
    {
        NSMutableArray *o = [NSMutableArray array];
        NSLog(@"testAutorelease - %ld", CFGetRetainCount((__bridge CFTypeRef)o));
        o1 = o;
    }
    NSLog(@"%@", o1);
}

- (void)testAutorelease2 {
    __unsafe_unretained NSMutableArray *o1 = nil;
    {
        NSMutableArray *o = [NSMutableArray arrayWithObjects:@"1", nil];
        NSLog(@"testAutorelease2 - %ld", CFGetRetainCount((__bridge CFTypeRef)o));
        o1 = o;
    }
    NSLog(@"testAutorelease2 - %@", o1);
    NSLog(@"testAutorelease2 - %ld", CFGetRetainCount((__bridge CFTypeRef)o1));
}

@end
