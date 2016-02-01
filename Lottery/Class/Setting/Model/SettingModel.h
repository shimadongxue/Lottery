//
//  SettingModel.h
//  Lottery
//
//  Created by llairen on 15/9/18.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void (^SettingModelOption)();
@interface SettingModel : NSObject


@property (nonatomic, strong)NSString *title;

@property (nonatomic, strong)NSString *icon;


@property (nonatomic, copy)SettingModelOption option;

+(instancetype)modelWithTitle:(NSString *)title icon:(NSString *)icon;
+(instancetype)modelWithTitle:(NSString *)title ;
@end
