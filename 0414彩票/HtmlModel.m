//
//  HtmlModel.m
//  0414彩票
//
//  Created by LE on 15/3/17.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "HtmlModel.h"

@implementation HtmlModel
+(instancetype) htmlWithDictionary:(NSDictionary *)dict{
    return [[self alloc] initWithDictionary:dict];
}
-(instancetype) initWithDictionary:(NSDictionary *)dict{
    if (self = [super init]) {
        self.htmlId = dict[@"id"];
        self.htmlName = dict[@"html"];
        self.helpTitle = dict[@"title"];
    }
    return  self;
}


@end
