//
//  SettingModel.m
//  Lottery
//
//  Created by llairen on 15/9/18.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "SettingModel.h"

@implementation SettingModel
+(instancetype)modelWithTitle:(NSString *)title icon:(NSString *)icon
{
    SettingModel * Model=[[self alloc] init];
    Model.title=title;
    Model.icon=icon;
    
    return Model;
}
+(instancetype)modelWithTitle:(NSString *)title
{
    
    return [self modelWithTitle:title icon:nil];
}
@end
