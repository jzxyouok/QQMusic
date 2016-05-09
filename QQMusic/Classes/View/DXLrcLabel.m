//
//  DXLrcLabel.m
//  QQMusic
//
//  Created by dengxiang on 15/8/17.
//  Copyright (c) 2016年 Jack. All rights reserved.
//

#import "DXLrcLabel.h"

@implementation DXLrcLabel

- (void)setProgress:(CGFloat)progress
{
    _progress = progress;
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    // 1.获取需要画的区域
    CGRect fillRect = CGRectMake(0, 0, self.bounds.size.width * self.progress, self.bounds.size.height);
    
    // 2.设置颜色
    UIColor *color = [UIColor colorWithRed:0 green:205/255.0 blue:126/255.0 alpha:1.0];
    [color set];
    // 3.添加区域
    UIRectFillUsingBlendMode(fillRect, kCGBlendModeSourceIn);
}


@end
