//
//  LLDataTools.m
//  单例设置模式
//
//  Created by LL on 15/12/29.
//  Copyright © 2015年 tete. All rights reserved.
//  利用GCD的方式创建单例

#import "LLDataTools.h"

@implementation LLDataTools
static id _instance;

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    
    return _instance;
}

+ (instancetype)sharedDataTools{

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    
    return _instance;
    
}

- (id)copyWithZone:(NSZone *)zone{
    
    return _instance;
}

@end
