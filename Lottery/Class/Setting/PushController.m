//
//  PushController.m
//  Lottery
//
//  Created by llairen on 15/9/18.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "PushController.h"
#import "SettingModel.h"
#import "SettingGroupModel.h"
#import "MJSettingArrowModel.h"
#import "NumPushViewController.h"
#import "AnimViewController.h"
#import "LiveWarnViewController.h"

#import "SettingCell.h"
@interface PushController ()

@end

@implementation PushController


- (void)viewDidLoad {
    [super viewDidLoad];
    SettingModel *KJpush=[MJSettingArrowModel modelWithTitle:@"开奖号码推送" destClass:[NumPushViewController class]];
    SettingModel *ZJAnim=[MJSettingArrowModel modelWithTitle:@"中奖动画"destClass:[AnimViewController class]];
    SettingModel *BFWarn=[MJSettingArrowModel modelWithTitle:@"比分直播提配"destClass:[LiveWarnViewController class]];
    SettingModel *GCWarn=[MJSettingArrowModel modelWithTitle:@"购彩定时提醒"destClass:[MJSettingArrowModel class]];
    SettingGroupModel * group=[[SettingGroupModel alloc]init];
    group.array=@[KJpush,ZJAnim,BFWarn,GCWarn];
    [self.data addObject:group];
}








@end
