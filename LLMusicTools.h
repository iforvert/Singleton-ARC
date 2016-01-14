//
//  LLMusicTools.h
//  单例设置模式
//
//  Created by LL on 15/12/29.
//  Copyright © 2015年 tete. All rights reserved.
//  

#import <Foundation/Foundation.h>

@interface LLMusicTools : NSObject

@property (nonatomic,strong) NSString *name;

+ (instancetype)sharedMusicTools;

@end
