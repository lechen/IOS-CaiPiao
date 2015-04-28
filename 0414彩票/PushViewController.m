//
//  PushViewController.m
//  0414彩票
//
//  Created by LE on 15/3/17.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "PushViewController.h"
#import "SettingGroup.h"
#import "SettingItem.h"
#import "SettingArrowItem.h"
#import "Test1ViewControllerTableViewController.h"

@interface PushViewController ()

@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
}

-(void) initData{
    SettingItem *item1 = [SettingArrowItem settingItemWithItemTile:@"开奖号码推送" AnddestVCClass:[Test1ViewControllerTableViewController class]];
    SettingItem *item2 = [SettingArrowItem settingItemWithItemTile:@"中将动画"];
    SettingItem *item3 = [SettingArrowItem settingItemWithItemTile:@"比分直播提醒"];
    SettingItem *item4 = [SettingArrowItem settingItemWithItemTile:@"购彩定时提醒"];
    NSArray *items = @[item1,item2,item3,item4];
    SettingGroup *group = [[SettingGroup alloc] init];
    group.itemArray = items;
    self.data = @[group];
}

@end
