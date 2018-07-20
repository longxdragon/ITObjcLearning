//
//  ITWeak.m
//  ITObjcLearning
//
//  Created by 许龙 on 2018/7/11.
//  Copyright © 2018 许龙. All rights reserved.
//

#import "ITWeak.h"

@implementation ITWeak

extern uintptr_t _objc_rootRetainCount(id obj);

- (instancetype)init {
    self = [super init];
    if (self) {
        [self defineWeakObj];
    }
    return self;
}

/**
 c++基础：
 int *p -> p 是指向整数类型的指针
 int **p -> p 是指向一个整数类型的指针的指针
 x = *p -> * （在右边）解引用，指针 p 指向的值赋值给 x
 p = &x -> & 取地址符，指向 x 的指针赋值给 p
 
 编译成汇编代码：
 
 _objc_msgSend(NSObject, @selector(new));
 _objc_initWeak(&ojc, o);
 __objc_rootRetainCount
 _objc_loadWeakRetained(&obj)
 __objc_rootRetainCount(obj)
 _objc_release(o)
 _objc_destroyWeak(&obj)
 
 
 1、runtime如何实现weak变量的自动置nil？
 
 runtime 对于weak对象，会把weak对象指向的对象内存作为key，weak对象作为value
 HashMap[o] = [obc]
 由于可能同一块内存可能很多的weak对象指向，所有value是一个数组
 
 
 2、主要是通过 objc_storeWeak 方法实现的
 
 objc_storeWeak(&a, b)
 objc_storeWeak 函数把第二个参数--赋值对象（b）的内存地址作为键值，
 将第一个参数--weak修饰的属性变量（a）的内存地址注册到 weak 表中。
 如果第二个参数（b）为0（nil），那么把变量（a）的地址从weak表中删除。
 
 
 3、系统自己实现了HashMap结构：
 
 StripedMap[object] = SlideTable
 [] 被重载，根据 object 转化成下标，然后取出 array 中的对象 PaddedT
 PaddedT 对象中定义了 value 的范型对象，而这个对象就是 SlideTable
 
 */
- (void)defineWeakObj {
    NSObject *o = [NSObject new];
    id __weak obj = o;
    NSLog(@"%ld", _objc_rootRetainCount(o));
    NSLog(@"%ld", _objc_rootRetainCount(obj));
}

@end
