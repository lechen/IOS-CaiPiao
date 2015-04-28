//
//  SettingItem.h
//  0414彩票
//
//  Created by LE on 15/3/12.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^MySettingItemOption)();

@interface SettingItem : NSObject

@property (nonatomic,copy) NSString *icon;
@property(nonatomic,copy) NSString *itemTitle;
/**
 *  点击cell需要做什么事情
 */
@property(nonatomic,copy) MySettingItemOption option;

+(instancetype) settingItemWithImageName:(NSString *)icon AndItemTile:(NSString *)itemTitle;
+(instancetype) settingItemWithItemTile:(NSString *)itemTitle;
@end
