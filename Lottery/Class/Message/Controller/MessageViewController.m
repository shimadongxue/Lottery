//
//  MessageViewController.m
//  Lottery
//
//  Created by llairen on 15/9/16.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "MessageViewController.h"
#import "TestViewController.h"
@interface MessageViewController ()

@end

@implementation MessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"开奖信息";
    self.view.backgroundColor=[UIColor purpleColor];
    MLBarButtonItem *right=(MLBarButtonItem *)[MLBarButtonItem barButtonItemWithImage:@"pushSettings" setTitle:@"开奖推送" rect:CGRectMake(0, 0, 80, 30) target:self action:@selector(rightClickMessage)];
    self.navigationItem.rightBarButtonItem=right;
}

-(void)rightClickMessage
{
    NSLog(@"开奖信息rightClickMessage");
}
@end
