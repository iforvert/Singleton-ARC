
//
//  LLSoundTool.m
//  单例设置模式
//
//  Created by LL on 15/12/29.
//  Copyright © 2015年 tete. All rights reserved.
//  饿汉式

#import "LLSoundTool.h"

@implementation LLSoundTool
static id _instance;

/**
 *  这个方法当类第一次加进内存时候会调用(也可以说是加进运行时的时候)(只会调用一次)
 */
+ (void)load{
    
    _instance = [[self alloc] init];

    NSLog(@"----%@",_instance);
}

/**
 *  当类第一次被使用的时候的时候会调用(只会调用一次)
 */
+ (void)initialize{

}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    
    @synchronized(self) {
        
        if (_instance == nil) {
            
            _instance = [super allocWithZone:zone];
            
        }
    }
    
    return _instance;


}

+(instancetype)sharedSoundTools{
    if (_instance == nil) { // 防止多次加锁
        
        @synchronized(self) {
            
            if (_instance == nil) {// 防止创建多次
                _instance = [[self alloc] init];
            }
            
        }
    }
    return _instance;
    
}


- (id)copyWithZone:(NSZone *)zone{
    
    return _instance;
}

@end
