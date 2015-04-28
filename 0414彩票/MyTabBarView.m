//
//  MyTabBarView.m
//  0414彩票
//
//  Created by LE on 15/3/3.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "MyTabBarView.h"
#import "MyTabBarButton.h"

@interface MyTabBarView()
@property (nonatomic,weak) MyTabBarButton *selectedBtn;
@end


@implementation MyTabBarView
//- (instancetype)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        [self setupItem];
//    }
//    return self;
//}
//
//-(void) setupItem{
//    //添加item按钮
//    for (int i = 0; i < itemNum; i++) {
//        MyTabBarButton *btn = [MyTabBarButton buttonWithType:UIButtonTypeCustom]
//        btn.tag = i;
//        UIImage *normalImage = [UIImage imageNamed:[NSString stringWithFormat:@"TabBar%d",i + 1]];
//        [btn setBackgroundImage:normalImage forState:UIControlStateNormal];
//        
//        UIImage *selectedImage = [UIImage imageNamed:[NSString stringWithFormat:@"TabBar%dSel",i + 1]];
//        [btn setBackgroundImage:selectedImage forState:UIControlStateSelected];
//        
//        [self addSubview:btn];
//        
//        //添加点击事件
//        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
//        
//        //默认选中第一个
//        if (btn.tag == 0) {
//            [self btnClick:btn];
//        }
//    }
//}

-(void)addTababarButtonWithName:(NSString *)name andSelName:(NSString *)selName{
    MyTabBarButton *btn = [MyTabBarButton buttonWithType:UIButtonTypeCustom];
    UIImage *normalImage = [UIImage imageNamed:name];
    [btn setBackgroundImage:normalImage forState:UIControlStateNormal];
    
    UIImage *selectedImage = [UIImage imageNamed:selName];
    [btn setBackgroundImage:selectedImage forState:UIControlStateSelected];
    [self addSubview:btn];
    
    //添加点击事件
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
    
    //默认选中第一个
    if (self.subviews.count == 1) {
        [self btnClick:btn];
    }

}

-(void)layoutSubviews{
    [super layoutSubviews];
    int itemNum = self.subviews.count;
    for (int i = 0; i < itemNum; i++) {
        MyTabBarButton *btn = self.subviews[i];
        btn.tag = i;
        CGFloat btnW = self.frame.size.width / itemNum;
        CGFloat btnH = self.frame.size.height;
        CGFloat btnX = i * btnW;
        CGFloat btnY = 0;
        btn.frame = CGRectMake(btnX, btnY, btnW, btnH);
    }
}

/**
 *  item点击事件
 */
-(void)btnClick:(MyTabBarButton *)btn{
    //通知代理
    if ([self.delegate respondsToSelector:@selector(tarbar:didSeletedButtonFrom:to:)]) {
        [self.delegate tarbar:self didSeletedButtonFrom:self.selectedBtn.tag to:btn.tag];
    }
    
    //“当前按钮”选中状态为NO
    self.selectedBtn.selected = NO;
    
    //设置新点击的按钮为YES
    btn.selected = YES;
    
    //把新点击的按钮设为“当前按钮”
    self.selectedBtn = btn;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
