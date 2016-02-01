//
//  BuyViewController.m
//  Lottery
//
//  Created by llairen on 15/9/16.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "BuyViewController.h"
#import "MLTitleButton.h"
@interface BuyViewController ()
@property (nonatomic,weak) MLTitleButton *mengle;
@end

@implementation BuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor redColor];
    self.ange=YES;
    MLTitleButton * title=[[MLTitleButton alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
    [title addTarget:self action:@selector(titleButton:) forControlEvents:UIControlEventTouchUpInside];
    [title setTitle:@"全部彩种" forState:UIControlStateNormal];
    [title setImage:[UIImage imageNamed:@"YellowDownArrow"] forState:UIControlStateNormal];
    title.titleLabel.font=[UIFont systemFontOfSize:17];
    self.navigationItem.titleView=title;
    self.mengle=title;
    //right button
    MLBarButtonItem * right=(MLBarButtonItem *)[MLBarButtonItem barButtonItemWithImage:@"NavInfoFlat" setTitle:nil rect:CGRectMake(0, 0, 20, 20) target:self action:@selector(rightClickBuy)];
    self.navigationItem.rightBarButtonItem=right;
}

-(void)rightClickBuy
{
    NSLog(@"这里是全部彩种rightButton!");
}
-(void)titleButton:(MLTitleButton *)sender
{
    sender.selected=!sender.isSelected;
    if(self.mengle.selected){
        [UIView animateWithDuration:1.0 animations:^{
            sender.imageView.transform=CGAffineTransformMakeRotation(M_PI);
        }];
        
    }else{
        [UIView animateWithDuration:1.0 animations:^{
            sender.imageView.transform=CGAffineTransformMakeRotation(0);
        }];
        
    }
   
    
    
    
}
@end
