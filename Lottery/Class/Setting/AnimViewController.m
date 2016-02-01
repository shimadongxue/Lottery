//
//  AnimViewController.m
//  Lottery
//
//  Created by llairen on 15/9/21.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "AnimViewController.h"
#import "SettingModel.h"
#import "SettingGroupModel.h"
#import "MJSettingSwitchModel.h"
@interface AnimViewController ()

@end

@implementation AnimViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SettingModel * anim=[MJSettingSwitchModel modelWithTitle:@"中奖动画"];
    SettingGroupModel *group=[[SettingGroupModel alloc]init];
    group.head=@"当您有新中奖订单，启动程序时通过动画提醒您。为避免过于频繁，高频彩不会提醒。";
    group.array=@[anim];
    [self.data addObject:group];
}

@end
