//
//  HtmlViewController.m
//  0414彩票
//
//  Created by LE on 15/3/17.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "HtmlViewController.h"
#import "HtmlModel.h"

@interface HtmlViewController ()<UIWebViewDelegate>

@end

@implementation HtmlViewController

-(void)loadView{
    self.view = [[UIWebView alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置标题
    self.title = self.html.helpTitle;
    
    UIWebView *webView = (UIWebView *)self.view;
    webView.delegate = self;
    //创建URL
    NSURL *url = [[NSBundle mainBundle] URLForResource:self.html.htmlName withExtension:nil];
    //创建请求
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    //发送请求加载页面
    [webView loadRequest:req];
    //设置左上角关闭按钮
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"关闭" style:UIBarButtonItemStylePlain target:self action:@selector(clock)];
}

-(void) clock{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    //拼接js
    NSString *js = [NSString stringWithFormat:@"window.location.href = '#%@'",self.html.htmlId];
    //执行js
    [webView stringByEvaluatingJavaScriptFromString:js];
    
}

@end
