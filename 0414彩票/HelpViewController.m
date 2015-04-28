//
//  HelpViewController.m
//  0414彩票
//
//  Created by LE on 15/3/17.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "HelpViewController.h"
#import "SettingArrowItem.h"
#import "SettingItem.h"
#import "SettingGroup.h"
#import "Test1ViewControllerTableViewController.h"
#import "HtmlModel.h"
#import "HtmlViewController.h"
#import "MyNavigationController.h"

@interface HelpViewController ()
@property(nonatomic,strong) NSMutableArray *htmlArray;
@end

@implementation HelpViewController

-(NSArray *)htmlArray{
    //加载数据
    if (_htmlArray == nil) {
        NSString *jsonPath = [[NSBundle mainBundle] pathForResource:@"help.json" ofType:nil];
        NSData *jsonData = [NSData dataWithContentsOfFile:jsonPath];
        NSArray *dictArray = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:nil];
        self.htmlArray = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            [self.htmlArray addObject:[HtmlModel htmlWithDictionary:dict]];
        }
    }
    return _htmlArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *items = [NSMutableArray array];
    //创建cell
    for (HtmlModel *html in self.htmlArray) {
        SettingItem *item = [SettingArrowItem settingItemWithItemTile:html.helpTitle AnddestVCClass:nil];
        [items addObject:item];
    }
    
    SettingGroup *group = [[SettingGroup alloc] init];
    group.itemArray = items;
    self.data = @[group];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    HtmlViewController *htmlVC = [[HtmlViewController alloc] init];
    htmlVC.html = self.htmlArray[indexPath.row];
    
    MyNavigationController *nav = [[MyNavigationController alloc] initWithRootViewController:htmlVC];
    [self presentViewController:nav animated:YES completion:nil];
}

@end
