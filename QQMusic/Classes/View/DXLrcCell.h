//
//  DXLrcCell.h
//  QQMusic
//
//  Created by dengxiang on 15/8/17.
//  Copyright (c) 2016年 Jack. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DXLrcLabel;

@interface DXLrcCell : UITableViewCell

@property (nonatomic, weak, readonly) DXLrcLabel *lrcLabel;

+ (instancetype)lrcCellWithTableView:(UITableView *)tableView;

@end
