//
//  DXLrcView.h
//  QQMusic
//
//  Created by dengxiang on 15/8/17.
//  Copyright (c) 2016年 Jack. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DXLrcLabel;

@interface DXLrcView : UIScrollView

@property (nonatomic, copy) NSString *lrcName;

/** 当前播放的时间 */
@property (nonatomic, assign) NSTimeInterval currentTime;

/** 外面歌词的Label */
@property (nonatomic, weak) DXLrcLabel *lrcLabel;

/** 当前歌曲的总时长 */
@property (nonatomic, assign) NSTimeInterval duration;

@end
