//
//  SettingCell.h
//  Lottery
//
//  Created by llairen on 15/9/18.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SettingModel.h"


@interface SettingCell : UITableViewCell
@property (nonatomic, strong)SettingModel *model;

+(instancetype)cellWithTableView:(UITableView *)tableView;
@end
