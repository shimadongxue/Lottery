//
//  DataViewController.m
//  Lottery
//
//  Created by llairen on 15/9/21.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "DataViewController.h"
#import "SettingGroupModel.h"
#import "SettingModel.h"
#import "MJSettingArrowModel.h"
#import "MJSettingSwitchModel.h"
#import "PushController.h"
#import "HelpViewController.h"
#import "MBProgressHUD+MJ.h"
@interface DataViewController ()

@end

@implementation DataViewController
-(void)setUpGroup1
{
    SettingModel * MorePush=[MJSettingArrowModel modelWithTitle:@"推送和提醒" icon:@"MorePush" destClass:[PushController class]];
    SettingModel * handShark=[MJSettingSwitchModel modelWithTitle:@"摇一摇机选" icon:@"handShake"];
    SettingModel *soundEffect=[MJSettingSwitchModel modelWithTitle:@"声音效果" icon:@"sound_Effect"];
    SettingGroupModel *group=[[SettingGroupModel alloc]init];
    group.array=@[MorePush,handShark,soundEffect];
    
    
    [self.data addObject:group];
    
    
    
    
}

-(void)setUpGroup2
{
    SettingModel *MoreUpdate=[SettingModel modelWithTitle:@"检查新版本" icon:@"MoreUpdate"];
    MoreUpdate.option=^{
        NSLog(@"=====");
        [MBProgressHUD showMessage:@"正在检查最新版本..."];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [MBProgressHUD hideHUD];
            [MBProgressHUD showError:@"对不起， 没有新版本"];
        });
    };
    SettingModel *MoreHelp=[MJSettingArrowModel modelWithTitle:@"帮助" icon:@"MoreHelp" destClass:[HelpViewController class]];
    SettingModel *MoreShare=[MJSettingArrowModel modelWithTitle:@"分享" icon:@"MoreShare"];
    SettingModel *MoreMessage=[MJSettingArrowModel modelWithTitle:@"查看消息" icon:@"MoreMessage"];
    SettingModel *MoreNetease=[MJSettingArrowModel modelWithTitle:@"产品推荐" icon:@"MoreNetease"];
    SettingModel *MoreAbout=[MJSettingArrowModel modelWithTitle:@"关于" icon:@"MoreAbout"];
    SettingGroupModel *group=[[SettingGroupModel alloc]init];
    group.array=@[MoreUpdate, MoreHelp, MoreShare, MoreMessage, MoreNetease, MoreAbout];
    [self.data addObject:group];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpGroup1];
    [self setUpGroup2];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
