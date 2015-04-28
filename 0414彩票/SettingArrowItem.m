//
//  SettingArrowItem.m
//  0414彩票
//
//  Created by LE on 15/3/12.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "SettingArrowItem.h"

@implementation SettingArrowItem
+(instancetype)settingItemWithItemTile:(NSString *)itemTitle AnddestVCClass:(Class)destVCClass{
    SettingArrowItem *arrowItem = [self settingItemWithItemTile:itemTitle];
    arrowItem.destVCClass = destVCClass;
    return arrowItem;
}

+(instancetype)settingItemWithImageName:(NSString *)icon AndItemTile:(NSString *)itemTitle AnddestVCClass:(Class)destVCClass{
    SettingArrowItem *arrowItem = [self settingItemWithImageName:icon AndItemTile:itemTitle];
    arrowItem.destVCClass = destVCClass;
    return arrowItem;
}
@end
