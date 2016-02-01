//
//  NumPushViewController.m
//  Lottery
//
//  Created by llairen on 15/9/21.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "NumPushViewController.h"
#import "SettingModel.h"
#import "SettingGroupModel.h"
#import "MJSettingArrowModel.h"
#import "MJSettingSwitchModel.h"
@interface NumPushViewController ()

@end

@implementation NumPushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SettingModel *doubleBall=[MJSettingSwitchModel modelWithTitle:@"双色球"];
    SettingModel *bigBall=[MJSettingSwitchModel modelWithTitle:@"大乐透"];
    SettingGroupModel * group=[[SettingGroupModel alloc]init];
    group.array=@[doubleBall,bigBall];
    group.head=@"打开设置即可在开奖后立即收到推送消息，获知开奖号码";
    [self.data addObject:group];
}



@end
