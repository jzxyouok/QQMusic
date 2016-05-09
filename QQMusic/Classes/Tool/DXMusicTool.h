//
//  DXMusicTool.h
//  QQMusic
//
//  Created by dengxiang on 16/4/1.
//  Copyright (c) 2016年 Jack. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DXMusic;

@interface DXMusicTool : NSObject

+ (NSArray *)musics;

+ (DXMusic *)playingMusic;

+ (void)setPlayingMusic:(DXMusic *)playingMusic;

+ (DXMusic *)nextMusic;

+ (DXMusic *)previousMusic;

@end
