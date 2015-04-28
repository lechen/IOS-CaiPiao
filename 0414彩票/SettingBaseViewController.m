//
//  SettingBaseViewController.m
//  0414彩票
//
//  Created by LE on 15/3/15.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "SettingBaseViewController.h"
#import "SettingGroup.h"
#import "SettingTableViewCell.h"
#import "SettingItem.h"
#import "SettingArrowItem.h"
#import "SettingLabelItem.h"
#import "SettingSwitchItem.h"

@interface SettingBaseViewController ()

@end

@implementation SettingBaseViewController

-(instancetype)init{
    return [super initWithStyle:UITableViewStyleGrouped];
}

-(instancetype)initWithStyle:(UITableViewStyle)style{
    return [super initWithStyle:UITableViewStyleGrouped];
}

//- (void)viewDidLoad {
//    [super viewDidLoad];
//}
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return self.data.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    SettingGroup *group = self.data[section];
    return group.itemArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SettingTableViewCell *cell = [SettingTableViewCell cellWithTableView:tableView];
    SettingGroup *group = self.data[indexPath.section];
    cell.item = group.itemArray[indexPath.row];
    return cell;
    //    return [SettingTableViewCell cellWithTableView:tableView AndItem:group.itemArray[indexPath.row]];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //取消选中
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    SettingGroup *group = self.data[indexPath.section];
    SettingItem *item = group.itemArray[indexPath.row];
    //执行option中的代码
    if (item.option) {
        item.option();
    }
    
    if ([item isKindOfClass:[SettingArrowItem class]]) {
        SettingArrowItem *arrowItem = (SettingArrowItem *)item;
        if (arrowItem.destVCClass == nil) {
            return;
        }
        
        UIViewController * vc = [[arrowItem.destVCClass alloc] init];
        vc.title = arrowItem.itemTitle;
        UIBarButtonItem *barItem = [[UIBarButtonItem alloc] init];
        barItem.title = self.navigationController.title;
        self.navigationItem.backBarButtonItem = barItem;
        [self.navigationController pushViewController:vc animated:YES ];
    }
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    SettingGroup *group = self.data[section];
    return group.header;
}


-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    SettingGroup *group = self.data[section];
    return group.footer;
}

@end
