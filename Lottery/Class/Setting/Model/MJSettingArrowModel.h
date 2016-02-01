//
//  MJSettingArrowModel.h
//  Lottery
//
//  Created by llairen on 15/9/18.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "SettingModel.h"
#import "SettingModel.h"
@interface MJSettingArrowModel : SettingModel




@property (nonatomic, assign)Class destClass;
+(instancetype)modelWithTitle:(NSString *)title icon:(NSString *)icon destClass:(Class)destClass;
+(instancetype)modelWithTitle:(NSString *)title destClass:(Class)destClass;
@end
