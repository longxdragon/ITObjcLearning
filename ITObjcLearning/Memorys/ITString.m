//
//  ITString.m
//  InterviewTopics
//
//  Created by 许龙 on 2018/6/21.
//  Copyright © 2018 许龙. All rights reserved.
//

#import "ITString.h"
#import <objc/runtime.h>

// http://www.infoq.com/cn/articles/deep-understanding-of-tagged-pointer
// https://suhou.github.io/2017/03/01/%E7%94%B1NSString%E4%BB%80%E4%B9%88%E6%97%B6%E5%80%99%E9%87%8A%E6%94%BE%E8%AF%B4%E8%B5%B7/
@implementation ITString

- (instancetype)init {
    self = [super init];
    if (self) {
        [self testThreeTypeString];
    }
    return self;
}

- (void)testThreeTypeString {
    // __NSCFConstantString
    // 常量内存，非对象类型，不受内存管理
    // 生成了两个指针，一个常量内存的指针，一个 str 指针，指向常量内存
    NSString *str = @"dragonxulong";
    NSLog(@"%p, %@", str, object_getClass(str));
    
    // NSTaggedPointerString
    // 64位CPU - 加入了 TaggedPointer 特性
    // 当指针的 8bit 可以储存，就不会在堆上分配内存，直接把内容储存在指针内存中
    // 不受内存管理
    NSString *str2 = [NSString stringWithFormat:@"1"];
    NSString *str3 = [[NSString alloc] initWithFormat:@"2"];
    NSLog(@"%p, %@", str2, object_getClass(str2));
    NSLog(@"%p, %@", str3, object_getClass(str3));

    // __NSCFString
    // 60bit 储存不下对应大小的对象，就会在堆上分配内存
    // 此时才是真正的对象类型，并且受内存管理
    NSString *str4 = [NSString stringWithFormat:@"dragonxulong"];
    NSLog(@"%p, %@", str4, object_getClass(str4));
}

@end
