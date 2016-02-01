//
//  MJSettingArrowModel.m
//  Lottery
//
//  Created by llairen on 15/9/18.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "MJSettingArrowModel.h"

@implementation MJSettingArrowModel
+(instancetype)modelWithTitle:(NSString *)title icon:(NSString *)icon destClass:(Class)destClass
{
    
    MJSettingArrowModel * model=[self modelWithTitle:title icon:icon];
    model.destClass=destClass;
    return model;
}
+(instancetype)modelWithTitle:(NSString *)title destClass:(Class)destClass
{
    return [self modelWithTitle:title icon:nil destClass:destClass];
}
@end
