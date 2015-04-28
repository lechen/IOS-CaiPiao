//
//  MyBuyViewController.m
//  0414彩票
//
//  Created by LE on 15/3/6.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "MyBuyViewController.h"

@interface MyBuyViewController ()
- (IBAction)titleBtnClik:(UIButton *)sender;

@end

@implementation MyBuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)titleBtnClik:(UIButton *)sender {
    //旋转
    [UIView animateWithDuration:0.25 animations:^{
        sender.imageView.transform = CGAffineTransformMakeRotation(M_PI);
    }];
}
@end
