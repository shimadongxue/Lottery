//
//  SettingTableController.m
//  Lottery
//
//  Created by llairen on 15/9/16.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "SettingTableController.h"
#import "SettingGroupModel.h"
#import "MJSettingArrowModel.h"
#import "MJSettingSwitchModel.h"
#import "SettingCell.h"

@interface SettingTableController ()

@end

@implementation SettingTableController
-(id)init
{
    return [super initWithStyle:UITableViewStyleGrouped];
}
-(id)initWithStyle:(UITableViewStyle)style
{
    return [super initWithStyle:UITableViewStyleGrouped];
}

-(NSMutableArray *)data
{
    if (_data==nil)
    {
        _data=[NSMutableArray array];
    }
    return _data;
}
-(void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.data.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    SettingGroupModel * group=self.data[section];
    return group.array.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SettingCell * cell=[SettingCell cellWithTableView:tableView];
    
    SettingGroupModel * group=self.data[indexPath.section];
    
    cell.model=group.array[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    SettingGroupModel * group=self.data[indexPath.section];
    SettingModel * model=group.array[indexPath.row];
    if (model.option)
    {
        model.option();
    }
    else if ([model isKindOfClass:[MJSettingArrowModel class]])
    {
        MJSettingArrowModel * arrow=(MJSettingArrowModel *)model;
        
        UIViewController * vc=[[arrow.destClass alloc]initWithStyle:UITableViewStyleGrouped];
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    SettingGroupModel * group=self.data[section];
    return  group.head;
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    SettingGroupModel * group=self.data[section];
    return  group.foot;
}
@end
