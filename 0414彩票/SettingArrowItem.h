//
//  SettingArrowItem.h
//  0414彩票
//
//  Created by LE on 15/3/12.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "SettingItem.h"

@interface SettingArrowItem : SettingItem
@property(nonatomic,assign) Class destVCClass;
+(instancetype) settingItemWithImageName:(NSString *)icon AndItemTile:(NSString *)itemTitle AnddestVCClass:(Class)destVCClass;
+(instancetype) settingItemWithItemTile:(NSString *)itemTitle AnddestVCClass:(Class)destVCClass;;
@end
