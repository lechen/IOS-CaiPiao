//
//  UIImage+Extension.m
//  0414彩票
//
//  Created by LE on 15/3/6.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)
+(UIImage *)resizableImage:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    CGFloat w = image.size.width * 0.2;
    CGFloat h = image.size.height * 0.2;
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(w, h, w, h)];
}
@end
