//
//  TestViewController.m
//  Lottery
//
//  Created by llairen on 15/9/16.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"==device=%f====",[[UIDevice currentDevice].systemVersion doubleValue]);
    /*
     UIButton *backButton=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 70, 30)];

    backButton.titleLabel.font=[UIFont systemFontOfSize:16];
    [backButton setBackgroundImage:[UIImage imageNamed:@"NavBackButton"] forState:UIControlStateNormal];
    [backButton setBackgroundImage:[UIImage imageNamed:@"NavBackButtonPressed"] forState:UIControlStateHighlighted];
    [backButton setTitle:@"返回" forState:UIControlStateNormal];
    UIBarButtonItem * backBar=[[UIBarButtonItem alloc]initWithCustomView:backButton];
    [backButton addTarget:self action:@selector(backButtonClick) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem=backBar;
    */
    UIWebView * web=[[UIWebView alloc]initWithFrame:self.view.frame];
    NSURLRequest * request=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://cai.163.com/?from=shouye"]];
    
    [self.view addSubview:web];
    [web loadRequest:request];
}
-(void)backButtonClick
{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
