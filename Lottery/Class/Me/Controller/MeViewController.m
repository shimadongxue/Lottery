//
//  MeViewController.m
//  Lottery
//
//  Created by llairen on 15/9/16.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "MeViewController.h"
#import "UIImage+Extension.h"
#import "DataViewController.h"
@interface MeViewController ()

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"我的彩票";
    self.view.backgroundColor=[UIColor colorWithRed:240/255.0 green:237.0/255.0 blue:228.0/255.0 alpha:1];
    [self barButtonItem];
    [self logImage];
    [self logButton];
    
    
}
-(void)logButton
{
    UIButton * button=[[UIButton alloc]initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, 35)];
    [button setTitle:@"登录" forState:UIControlStateNormal];
    UIImage *image=[UIImage resizableImage:@"RedButton"];
    UIImage *higtImage=[UIImage resizableImage:@"RedButtonPressed"];
    
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:higtImage forState:UIControlStateHighlighted];
    [self.view addSubview:button];
}
// 千万大奖 背景
-(void)logImage
{
    UIImageView * imageVC=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"LoginScreen"]];
    imageVC.frame=CGRectMake(0, 5, self.view.frame.size.width, 180);
    [self.view addSubview:imageVC];
}
//导航按钮
-(void)barButtonItem
{
    MLBarButtonItem *left=(MLBarButtonItem *)[MLBarButtonItem barButtonItemWithImage:@"FBMM_Barbutton" setTitle:@"客服" rect:CGRectMake(0, 0, 50, 20) target:self action:@selector(leftClickMe)];
    self.navigationItem.leftBarButtonItem=left;
    //right button
    MLBarButtonItem *right=(MLBarButtonItem *)[MLBarButtonItem barButtonItemWithImage:@"Mylottery_config" setTitle:nil rect:CGRectMake(0, 0, 20, 20) target:self action:@selector(rightClickMe)];
    self.navigationItem.rightBarButtonItem=right;
}
-(void)rightClickMe
{
    DataViewController * setting=[[DataViewController alloc]init];
    [self.navigationController pushViewController:setting animated:YES];
}
-(void)leftClickMe
{
    UIAlertView * alert=[[UIAlertView alloc]initWithTitle:@"客服电话24小时" message:@"15901414968" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"接通", nil];
    [alert show];
}



@end
