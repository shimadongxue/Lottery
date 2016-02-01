//
//  LiveWarnViewController.m
//  Lottery
//
//  Created by llairen on 15/9/21.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "LiveWarnViewController.h"
#import "SettingModel.h"
#import "SettingGroupModel.h"
#import "MJSettingSwitchModel.h"
#import "SettingModelLabelView.h"
@interface LiveWarnViewController ()

@end

@implementation LiveWarnViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SettingModel * warnMatch=[MJSettingSwitchModel modelWithTitle:@"提醒我关注的比赛"];
    SettingGroupModel * group1=[[SettingGroupModel alloc]init];
    group1.foot=@"当我关注的比赛比分发生变化时，通过小弹窗或推送进行提醒";
    group1.array=@[warnMatch];
    [self.data addObject:group1];
    SettingModel * start=[SettingModelLabelView modelWithTitle:@"起始时间"];
    SettingGroupModel *group2=[[SettingGroupModel alloc]init];
    group2.head=@"只在以下时间接受比分直播";
    group2.array=@[start];
    [self.data addObject:group2];
    
    SettingModel *end=[SettingModelLabelView modelWithTitle:@"结束时间"];
    SettingGroupModel * group3=[[SettingGroupModel alloc]init];
    group3.array=@[end];
    [self.data addObject:group3];
}



@end
