//
//  SettingItem.m
//  0414彩票
//
//  Created by LE on 15/3/12.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "SettingItem.h"

@implementation SettingItem
+(instancetype)settingItemWithItemTile:(NSString *)itemTitle{
    SettingItem *item = [[self alloc] init];
    item.itemTitle = itemTitle;
    return item;
}

+(instancetype)settingItemWithImageName:(NSString *)icon AndItemTile:(NSString *)itemTitle{
    SettingItem *item = [self settingItemWithItemTile:itemTitle];
    item.icon = icon;
    return item;
}


@end
