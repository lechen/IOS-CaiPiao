//
//  HtmlModel.h
//  0414彩票
//
//  Created by LE on 15/3/17.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HtmlModel : NSObject
/**
 *  网页标题
 */
@property(nonatomic,copy) NSString *helpTitle;
@property(nonatomic,copy) NSString *htmlName;
@property(nonatomic,copy) NSString *htmlId;

+(instancetype) htmlWithDictionary:(NSDictionary *)dict;
-(instancetype) initWithDictionary:(NSDictionary *)dict;
@end
