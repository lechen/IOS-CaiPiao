//
//  SettingGroup.h
//  0414彩票
//
//  Created by LE on 15/3/12.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingGroup : NSObject
/**
 *  头信息
 */
@property(nonatomic,copy) NSString *header;
/**
 * 尾信息
 */
@property(nonatomic,copy) NSString *footer;
/**
 *  该组内部的item
 */
@property(nonatomic,strong) NSArray *itemArray;
@end
