//
//  UIImage+Extension.h
//  0414彩票
//
//  Created by LE on 15/3/6.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)
/**
 *  放大图片某个部位
 *
 *  @param imageName 图片名
 *
 *  @return 放大后的UIImage
 */
+(UIImage *) resizableImage:(NSString *)imageName;
@end
