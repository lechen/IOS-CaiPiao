//
//  SettingTableViewController.m
//  0414彩票
//
//  Created by LE on 15/3/12.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "SettingTableViewController.h"
#import "SettingGroup.h"
#import "SettingTableViewCell.h"
#import "SettingItem.h"
#import "SettingArrowItem.h"
#import "SettingLabelItem.h"
#import "SettingSwitchItem.h"
#import "Test1ViewControllerTableViewController.h"
#import "MBProgressHUD+MJ.h"
#import "PushViewController.h"
#import "HelpViewController.h"

@interface SettingTableViewController ()

@end

@implementation SettingTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
}

-(void) initData{
    SettingItem *item1 = [SettingArrowItem settingItemWithImageName:@"MorePush" AndItemTile:@"推送和提醒" AnddestVCClass:[PushViewController class]];
    SettingItem *item2 = [SettingSwitchItem settingItemWithImageName:@"handShake" AndItemTile:@"摇一摇机选"];
    SettingItem *item3 = [SettingSwitchItem settingItemWithImageName:@"sound_Effect" AndItemTile:@"声音效果"];
    NSArray *items = @[item1,item2,item3];
    SettingGroup *group0 = [[SettingGroup alloc] init];
    group0.itemArray = items;
    
    SettingItem *item11 = [SettingArrowItem settingItemWithImageName:@"MoreUpdate" AndItemTile:@"检查新版本"];
    item11.option = ^{
        [MBProgressHUD showMessage:@"正在检查更新……"];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUD];
            [MBProgressHUD showError:@"没有新版本"];
        });
    };
    SettingItem *item12 = [SettingArrowItem settingItemWithImageName:@"MoreHelp" AndItemTile:@"帮助" AnddestVCClass:[HelpViewController class]];
    SettingItem *item13 = [SettingArrowItem settingItemWithImageName:@"MoreShare" AndItemTile:@"分享"];
    SettingItem *item14 = [SettingArrowItem settingItemWithImageName:@"MoreMessage" AndItemTile:@"查看消息" AnddestVCClass:[Test1ViewControllerTableViewController class]];
    SettingItem *item15 = [SettingArrowItem settingItemWithImageName:@"MoreNetease" AndItemTile:@"产品推荐"];
    SettingItem *item16 = [SettingArrowItem settingItemWithImageName:@"MoreAbout" AndItemTile:@"关于"];
    NSArray *items1 = @[item11,item12,item13,item14,item15,item16];
    SettingGroup *group1 = [[SettingGroup alloc] init];
    group1.itemArray = items1;
    
    self.data = @[group0,group1];

}

@end
