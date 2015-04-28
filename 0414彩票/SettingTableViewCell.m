//
//  SettingTableViewCell.m
//  0414彩票
//
//  Created by LE on 15/3/12.
//  Copyright (c) 2015年 LE. All rights reserved.
//

#import "SettingTableViewCell.h"
#import "SettingItem.h"
#import "SettingArrowItem.h"
#import "SettingSwitchItem.h"
#import "SettingLabelItem.h"

@interface SettingTableViewCell ()
@property (nonatomic,strong) UIImageView *arrowView;
@property (nonatomic,strong) UISwitch *switchView;
@property (nonatomic,strong) UILabel *labelView;
@end

@implementation SettingTableViewCell

-(UIImageView *)arrowView{
    if (_arrowView == nil) {
        _arrowView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    return _arrowView;
}

-(UISwitch *)switchView{
    if (_switchView == nil) {
        _switchView = [[UISwitch alloc] init];
    }
    return _switchView;
}

-(UILabel *)labelView{
    if (_labelView == nil) {
        _labelView = [[UILabel alloc] init];
        _labelView.bounds = CGRectMake(0, 0, 100, 30);
        _labelView.backgroundColor = [UIColor redColor];
    }
    return _labelView;
}


+(instancetype)cellWithTableView:(UITableView *)tableView{
    NSString *ID = @"settingCell";
    SettingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[SettingTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
}

//+(instancetype) cellWithTableView:(UITableView *)tableView AndItem:(SettingItem *)item{
//    SettingTableViewCell *cell = [self cellWithTableView:tableView];
//    //设置数据
//    cell.imageView.image = [UIImage imageNamed:item.icon];
//    cell.textLabel.text = item.itemTitle;
//    
//    //判断并设置accessoryView样式
//    if ([item isKindOfClass:[SettingArrowItem class]]) {
//        cell.accessoryView = cell.arrowView;
//    }else if ([item isKindOfClass:[SettingSwitchItem class]]){
//        cell.accessoryView = cell.switchView;
//    }else if ([item isKindOfClass:[SettingLabelItem class]]){
//        cell.accessoryView = cell.labelView;
//    }
//    return cell;
//}

-(void)setItem:(SettingItem *)item{
    _item = item;
    //设置数据
    self.imageView.image = [UIImage imageNamed:item.icon];
    self.textLabel.text = item.itemTitle;
    
    //判断并设置accessoryView样式
    if ([self.item isKindOfClass:[SettingArrowItem class]]) {
        self.accessoryView = self.arrowView;
    }else if ([self.item isKindOfClass:[SettingSwitchItem class]]){
        self.accessoryView = self.switchView;
    }else if ([self.item isKindOfClass:[SettingLabelItem class]]){
        self.accessoryView = self.labelView;
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
