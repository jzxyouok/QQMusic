//
//  NSString+DXTimeExtension.m
//  QQMusic
//
//  Created by dengxiang on 15/8/17.
//  Copyright (c) 2016年 Jack. All rights reserved.
//

#import "NSString+DXTimeExtension.h"

@implementation NSString (DXTimeExtension)

+ (NSString *)stringWithTime:(NSTimeInterval)time
{
    NSInteger min = time / 60;
    NSInteger second = (NSInteger)time % 60;
    
    return [NSString stringWithFormat:@"%02ld:%02ld", min, second];
}

@end
