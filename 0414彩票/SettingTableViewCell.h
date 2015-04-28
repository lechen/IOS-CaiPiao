//
//  SettingTableViewCell.h
//  0414彩票
//
//  Created by LE on 15/3/12.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SettingItem;

@interface SettingTableViewCell : UITableViewCell
@property(nonatomic,strong) SettingItem *item;

+(instancetype) cellWithTableView:(UITableView *)tableView;
//+(instancetype) cellWithTableView:(UITableView *)tableView AndItem:(SettingItem *)item;

@end
