//
//  MyTabBarControllerViewController.m
//  0414彩票
//
//  Created by LE on 15/3/2.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "MyTabBarController.h"
#import "MyTabBarView.h"
#import "MyTabBarButton.h"

@interface MyTabBarController ()<MyTabBarViewDelegate>

@end

@implementation MyTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //删除自带的tabBar
//    [self.tabBar removeFromSuperview];

    //使用自定义TabBar
    MyTabBarView *myTabBar = [[MyTabBarView alloc] init];
    myTabBar.delegate = self;
    myTabBar.frame = self.tabBar.bounds;
//    myTabBar.backgroundColor = [UIColor greenColor];
    [self.tabBar addSubview:myTabBar];
    
    //为myTabBar添加item
    for (int i = 0; i < self.viewControllers.count; i++) {
        NSString *name = [NSString stringWithFormat:@"TabBar%d",i + 1];
        NSString *selName = [NSString stringWithFormat:@"TabBar%dSel",i + 1];
        [myTabBar addTababarButtonWithName:name andSelName:selName];
    }
}

-(void)tarbar:(MyTabBarView *)tarbar didSeletedButtonFrom:(int)fromIndex to:(int)toIndex{
    self.selectedIndex = toIndex;
}
@end
