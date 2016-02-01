//
//  SettingCell.m
//  Lottery
//
//  Created by llairen on 15/9/18.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "SettingCell.h"
#import "MJSettingArrowModel.h"
#import "MJSettingSwitchModel.h"
#import "SettingModelLabelView.h"


@interface SettingCell ()
@property (nonatomic, strong)UIImageView *arrowView;
@property (nonatomic, strong)UISwitch *swithView;
@property (nonatomic, strong)UILabel *labelView;
@end
@implementation SettingCell
-(UIImageView *)arrowView;
{
    if (_arrowView==nil)
    {
        _arrowView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"CellArrow"]];
        
    }
    return _arrowView;
}
-(UISwitch *)swithView;
{
    if (_swithView==nil)
    {
        _swithView=[[UISwitch alloc]init];
        [_swithView addTarget:self action:@selector(swithViewChange) forControlEvents:UIControlEventValueChanged];
        
    }
    return _swithView;
}
-(UILabel *)labelView;
{
    if (_labelView==nil)
    {
        _labelView=[[UILabel alloc]init];
        _labelView.frame=CGRectMake(0, 0, 100, 30);
        _labelView.backgroundColor=[UIColor yellowColor];
        
    }
    return _labelView;
}
-(void)swithViewChange
{
    NSUserDefaults *userDefaults=[NSUserDefaults standardUserDefaults];
    [userDefaults setBool:self.swithView.isOn forKey:self.model.title];
    [userDefaults synchronize];
}
+(instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString * strID=@"setting";
    SettingCell *cell = [tableView dequeueReusableCellWithIdentifier:strID ];
    if (cell==nil)
    {
        cell=[[SettingCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strID];
        
    }
    return cell;
}

-(void)setModel:(SettingModel *)model
{
    _model=model;
    [self setdata];
    [self rightdata];
    
}
-(void)setdata
{
    if (self.model.icon)
    {
        self.imageView.image=[UIImage imageNamed:self.model.icon];
    }
    
    self.textLabel.text=self.model.title;
}
-(void)rightdata
{
    
    if ([self.model isKindOfClass:[MJSettingArrowModel class]])
    {
        self.accessoryView=self.arrowView;
    }
    else if ([self.model isKindOfClass:[MJSettingSwitchModel class]])
    {
        self.accessoryView=self.swithView;
        self.selected=NO;
        self.selectionStyle=UITableViewCellSelectionStyleNone;
        NSUserDefaults * userDefaults=[NSUserDefaults standardUserDefaults];
        self.swithView.on=[userDefaults boolForKey:self.model.title];
    }
    else if([self.model isKindOfClass:[SettingModelLabelView class]])
    {
        self.accessoryView=self.labelView;
        self.selectionStyle=UITableViewCellSelectionStyleNone;
    }
    else
    {
        self.accessoryView=nil;
    }
}

@end
