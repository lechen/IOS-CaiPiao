//
//  MyNavigationController.m
//  0414彩票
//
//  Created by LE on 15/3/4.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "MyNavigationController.h"

@interface MyNavigationController ()

@end

@implementation MyNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //拿到导航栏
    UINavigationBar *navBar = [UINavigationBar appearance];
    
    //设置导航栏背景图片
    double sysVersion = [[[UIDevice currentDevice] systemVersion] doubleValue];
    NSString *navBarImageName = @"NavBar";
    if (sysVersion >= 7.0) {
        navBarImageName = @"NavBar64";
        navBar.tintColor = [UIColor whiteColor];
    }
    [navBar setBackgroundImage:[UIImage imageNamed:navBarImageName] forBarMetrics:UIBarMetricsDefault];
    
    //设置标题文字样式
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:16];
    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    [navBar setTitleTextAttributes:dict];
    
    //设置item样式
    UIBarButtonItem *navItem = [UIBarButtonItem appearance];
    NSMutableDictionary *itemDict = [NSMutableDictionary dictionary];
    itemDict[NSFontAttributeName] = [UIFont systemFontOfSize:16];
    itemDict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    [navItem setTitleTextAttributes:itemDict forState:UIControlStateNormal];
}

/**
 *  重新定义状态栏样式
 */
//-(UIStatusBarStyle)preferredStatusBarStyle{
//    return UIStatusBarStyleLightContent;
//}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
