//
//  DXLrcline.h
//  QQMusic
//
//  Created by dengxiang on 15/8/17.
//  Copyright (c) 2016年 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DXLrcline : NSObject

@property (nonatomic, copy) NSString *text;
@property (nonatomic, assign) NSTimeInterval time;

- (instancetype)initWithLrclineString:(NSString *)lrclineString;
+ (instancetype)lrcLineWithLrclineString:(NSString *)lrclineString;

@end
