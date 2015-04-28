//
//  MyTitleButton.m
//  0414彩票
//
//  Created by LE on 15/3/6.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "MyTitleButton.h"

@interface MyTitleButton()
@property(nonatomic,strong) UIFont *titleFont;

@end

@implementation MyTitleButton

/**
 *  从文件中解析一个对象的时候会调用
 */
-(id)initWithCoder:(NSCoder *)decoder{
    if (self = [super initWithCoder:decoder]) {
        [self setUp];
    }
    return self;
}

/**
 *  通过代码创建控件时候调用
 */
-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setUp];
    }
    return self;
}

-(void)setUp{
    self.titleFont = [UIFont systemFontOfSize:16];
    self.titleLabel.font = self.titleFont;
    self.imageView.contentMode = UIViewContentModeCenter;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    CGFloat titleH = contentRect.size.height;
    
    NSDictionary *attrs = @{NSFontAttributeName : self.titleFont};
    
    CGFloat titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size.width;
    return CGRectMake(titleX, titleY, titleW, titleH);
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat imageW = 30;
    CGFloat imageH = contentRect.size.height;
    CGFloat imageX = contentRect.size.width - imageW + 5;
    CGFloat imageY = 0;
    return CGRectMake(imageX, imageY, imageW, imageH);
}

@end
