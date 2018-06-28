//
//  ITAutoReleaseViewController.m
//  InterviewTopics
//
//  Created by 许龙 on 2018/6/19.
//  Copyright © 2018 许龙. All rights reserved.
//

#import "ITAutoReleaseViewController.h"

@interface ITAutoReleaseViewController ()

@end

// http://blog.sunnyxx.com/2014/10/15/behind-autorelease/
// http://blog.leichunfeng.com/blog/2015/05/31/objective-c-autorelease-pool-implementation-principle/

@implementation ITAutoReleaseViewController

__weak id refrence = nil;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 场景 1
    // 返回的是 autorelease 对象
    NSString *str = [NSString stringWithFormat:@"dragonxulong"];
    NSLog(@"%ld", CFGetRetainCount((__bridge CFTypeRef)str));
//    refrence = str;
//    NSLog(@"%@", refrence);
    // 出了作用域后，并不是立马释放
    
    // 场景 2
//    {
//        NSString *str = [NSString stringWithFormat:@"dragonxulong"];
//        refrence = str;
//    }
//    NSLog(@"%@", refrence);
    
    
    // 场景 3
    // 手动干预 autorelease 对象
    // 等同于：
    // void *context = objc_autoreleasePoolPush();
    // {} 中的代码
    // objc_autoreleasePoolPop(context);
    //
    // AutoreleasePoolPage 来管理:
    // 双向链表
    // 跟线程一一对应，保存着当前的线程对象
    //
    @autoreleasepool {
        NSString *str = [NSString stringWithFormat:@"dragonxulong"];
        refrence = str;
    }
    NSLog(@"%@", refrence);
    
    // 场景 4
//        NSString *str2 = nil;
//        @autoreleasepool {
//            str2 = [NSString stringWithFormat:@"dragonxulong"];
//            refrence = str2;
//        }
//        NSLog(@"%@", refrence);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // 当前 runloop 迭代结束时，会 Push/Pop 自动释放池
    // 此时 自动释放池已然存在，runloop 还未迭代结束
    // 由于 ViewController 在 loadView 之后便 add 到了 window 层级上，所以 viewDidLoad 和 viewWillAppear 是在同一个 runloop 调用的
    NSLog(@"viewWillAppear : %@", refrence);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    // https://github.com/BigZaphod/Chameleon/blob/master/UIKit/Classes/UIViewController.m
    // https://blog.ibireme.com/2015/11/12/smooth_user_interfaces_for_ios/
    //
    // 如果 animated = YES，就需要做过场动画
    // viewDidAppear 方法是在动画执行完成后触发的
    // CoreAnimation 在 RunLoop 中注册了一个 Observer，监听了 BeforeWaiting 和 Exit 事件
    // 所以 CoreAnimation 的执行，是在 BeforeWaiting 和 Exit 时才执行
    // 此时 Runloop 迭代结束，Pop 当前的自动释放池，refrence对象释放
    //
    // 注意： animated = NO，viewWillAppear、viewDidAppear 就会在同一个 Runloop 周期内
    //
    NSLog(@"viewDidAppear : %@", refrence);
}

#pragma mark - 测试 CoreAnimation 与 Runloop 的关系

// https://blog.ibireme.com/2015/11/12/smooth_user_interfaces_for_ios/
//
// CoreAnimation 在 RunLoop 中注册了一个 Observer，监听了 BeforeWaiting 和 Exit 事件
// 所以 CoreAnimation 的执行，是在 BeforeWaiting 和 Exit 时才执行
// 此时 Runloop 迭代结束，Pop 当前的自动释放池，refrence对象释放
//
- (IBAction)testAnimationWithRunloop:(id)sender {
    [self defineInitValue];
    [self animationAction];
}

- (void)defineInitValue {
    NSString *str = [NSString stringWithFormat:@"dragonxulong"];
    refrence = str;
    NSLog(@"%@", refrence);
}

- (void)animationAction {
    [UIView transitionWithView:self.view duration:0 options:UIViewAnimationOptionLayoutSubviews animations:^{
        NSLog(@"%@", refrence);
    } completion:^(BOOL finished) {
        NSLog(@"%@", refrence);
    }];
}

@end
