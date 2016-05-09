//
//  DXMusicTool.m
//  QQMusic
//
//  Created by dengxiang on 16/4/1.
//  Copyright (c) 2016年 Jack. All rights reserved.
//

#import "DXMusicTool.h"
#import "DXMusic.h"
#import "MJExtension.h"

@implementation DXMusicTool

static NSArray *_musics;
static DXMusic *_playingMusic;

+ (void)initialize
{
    if (_musics == nil) {
        _musics = [DXMusic objectArrayWithFilename:@"Musics.plist"];
    }
    
    if (_playingMusic == nil) {
        _playingMusic = _musics[0];
    }
}

+ (NSArray *)musics
{
    return _musics;
}

+ (DXMusic *)playingMusic
{
    return _playingMusic;
}

+ (void)setPlayingMusic:(DXMusic *)playingMusic
{
    _playingMusic = playingMusic;
}

+ (DXMusic *)nextMusic
{
    // 1.拿到当前播放歌词下标值
    NSInteger currentIndex = [_musics indexOfObject:_playingMusic];
    
    // 2.取出下一首
    NSInteger nextIndex = ++currentIndex;
    if (nextIndex >= _musics.count) {
        nextIndex = 0;
    }
    DXMusic *nextMusic = _musics[nextIndex];
    
    return nextMusic;
}

+ (DXMusic *)previousMusic
{
    // 1.拿到当前播放歌词下标值
    NSInteger currentIndex = [_musics indexOfObject:_playingMusic];
    
    // 2.取出下一首
    NSInteger previousIndex = --currentIndex;
    if (previousIndex < 0) {
        previousIndex = _musics.count - 1;
    }
    DXMusic *previousMusic = _musics[previousIndex];
    
    return previousMusic;
}

@end
