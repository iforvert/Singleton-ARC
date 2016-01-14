
//
//  LLMusicTools.m
//  单例设置模式
//
//  Created by LL on 15/12/29.
//  Copyright © 2015年 tete. All rights reserved.
//  懒汉式

#import "LLMusicTools.h"

@implementation LLMusicTools

static id _instance;

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    
    @synchronized(self) {
        
        if (_instance == nil) {
            
            _instance = [super allocWithZone:zone];
            
        }
    }

    return _instance;
}

+(instancetype)sharedMusicTools{
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
