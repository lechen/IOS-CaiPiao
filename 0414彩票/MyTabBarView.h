//
//  MyTabBarView.h
//  0414彩票
//
//  Created by LE on 15/3/3.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyTabBarView;

@protocol MyTabBarViewDelegate <NSObject>

@optional
-(void) tarbar:(MyTabBarView *)tarbar didSeletedButtonFrom:(int)fromIndex to:(int)toIndex;

@end

@interface MyTabBarView : UIView
@property (nonatomic,weak) id<MyTabBarViewDelegate> delegate;

/**
 *  为自定义的TabBar添加item按钮
 *
 *  @param name    未选中时图片名字
 *  @param selName 选中时图片名字
 */
-(void) addTababarButtonWithName:(NSString *)name andSelName:(NSString *)selName;
@end
