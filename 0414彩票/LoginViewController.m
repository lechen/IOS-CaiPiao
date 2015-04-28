//
//  LoginViewController.m
//  0414彩票
//
//  Created by LE on 15/3/6.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "LoginViewController.h"
#import "UIImage+Extension.h"
#import "SettingTableViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
- (IBAction)settingClick:(UIBarButtonItem *)sender;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.loginBtn setBackgroundImage:[UIImage resizableImage:@"RedButton"] forState:UIControlStateNormal];
    [self.loginBtn setBackgroundImage:[UIImage resizableImage:@"RedButtonPressed"] forState:UIControlStateHighlighted];
}
/**
 *  跳转设置页面
 */
- (IBAction)settingClick:(UIBarButtonItem *)sender {
    SettingTableViewController *settingController = [[SettingTableViewController alloc] initWithStyle:UITableViewStyleGrouped];
    settingController.navigationItem.title = sender.title;
    [self.navigationController pushViewController:settingController animated:YES];
}
@end
