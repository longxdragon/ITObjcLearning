//
//  ITCFoundation.m
//  ITObjcLearning
//
//  Created by 许龙 on 2018/7/9.
//  Copyright © 2018 许龙. All rights reserved.
//

#import "ITCFoundation.h"

/**
 Core Foundation 框架是一组C语言接口，不是Objective-C的；所以用到CF对象的时候，是需要自己手动管理内存的，ARC是无效的。
 靠 CFRetain、CFRelease 来手动管理内存
 
 Core Foundation 提供的服务：
 - 群体数据类型 (数组、集合等)
 - 程序包
 - 字符串管理
 - 日期和时间管理
 - 原始数据块管理
 - 偏好管理
 - URL及数据流操作
 - 线程和RunLoop
 - 端口和soket通讯
 
 Core Foundation 框架跟 Foundation 框架是紧密相连的，都实现了相同的功能。
 两者中定义的类型，是可以相互掺和着使用的，可利用“Toll-free bridging”对两者的定义的类型相互转化
 1、__bridge
 2、__bridge_retained [ CFBridgingRetain()就是对__bridge_retained的宏定义 ]
 3、__bridge_transfer [ CFBridgingRelease()就是对__bridge_transfer的宏定义 ]
 */
@implementation ITCFoundation

- (instancetype)init {
    if (self = [super init]) {
        [self testBridge];
        [self testBridgeRetained];
        [self testBridgeTransfer];
    }
    return self;
}

- (void)testBridge {
    // __bridge 在移交对象的，不修改对象的引用计数
    NSString *str = [NSString stringWithFormat:@"dragonxulong"];
    CFStringRef strRef = (__bridge CFStringRef)str;
    NSLog(@"testBridge - %ld", CFGetRetainCount(strRef));
    
    const char *cstring = "dragonxulong";
    CFStringRef strRef1 = CFStringCreateWithCString(NULL, cstring, kCFStringEncodingUTF8);
    NSLog(@"testBridge - %ld", CFGetRetainCount(strRef1));
    
    // ARC 环境下，因为 str1 是强引用指针，赋值的时候会让 retainCount + 1
    NSString *str1 = (__bridge NSString *)strRef1;
    NSLog(@"testBridge - %ld", CFGetRetainCount((__bridge CFStringRef)str1));
    
    // 因为 __bridge 移交对象，不会让 ARC 自动托管（ARC 只管理了 str1 指针），所以不用的时候，需要释放 strRef1
    CFRelease(strRef1);
}

/**
 __bridge_retained 一般用于 Foundation 对象转 Core Foundation 对象
 转换后，就移交给 Core Foundation 自己管理内存了
 对移交的对象做一次 retain 操作
 不使用的时候，需要手动释放内存
 */
- (void)testBridgeRetained {
    NSString *str = [NSString stringWithFormat:@"dragonxulong"]; // 2
    NSLog(@"testBridgeRetained - %ld", CFGetRetainCount((__bridge CFStringRef)str));
    
    // __bridge_retained 在移交对象的，retainCount + 1
    CFStringRef strRef = (__bridge_retained CFStringRef)str;
    NSLog(@"testBridgeRetained - %ld", CFGetRetainCount(strRef));
    
    // strRef对象不用的时候，需要自己手动调用CFRelease方法
    CFRelease(strRef);
}

/**
 __bridge_transfer 一般用于 Core Foundation 对象转 Foundation 对象
 转换后，就移交对象给 Foudation 的 ARC 自动管理内存了
 对移交的对象做一次 release 操作
 */
- (void)testBridgeTransfer {
    NSString *str1;
    @autoreleasepool {
        const char *cstring = "dragonxulong";
        CFStringRef strRef = CFStringCreateWithCString(NULL, cstring, kCFStringEncodingUTF8);
        // 1
        NSLog(@"testBridgeTransfer - %ld", CFGetRetainCount(strRef));
        
        // 移交后的对象 str1 有 ARC 自动管理
        str1 = (__bridge_transfer NSString *)strRef;
        NSLog(@"testBridgeTransfer - %ld", CFGetRetainCount((__bridge CFStringRef)str1));
        
        // 自动对 strRef 对象做了 CFRelease 操作
        // 只剩 str1 强引用指针
    }
    NSLog(@"testBridgeTransfer - %ld", CFGetRetainCount((__bridge CFStringRef)str1));
    NSLog(@"testBridgeTransfer - %@", str1);
}

@end
