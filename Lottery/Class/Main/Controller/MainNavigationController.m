//
//  MainNavigationController.m
//  Lottery
//
//  Created by llairen on 15/9/16.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "MainNavigationController.h"

@interface MainNavigationController ()

@end

@implementation MainNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+(void)initialize
{
    UINavigationBar * nav=[UINavigationBar appearance];
    nav.tintColor=[UIColor whiteColor];
    [nav setBackgroundImage:[UIImage imageNamed:@"MLTabBar"] forBarMetrics:UIBarMetricsDefault];
    NSMutableDictionary * dict=[NSMutableDictionary dictionary];
    dict[NSFontAttributeName]=[UIFont systemFontOfSize:19];
    dict[NSForegroundColorAttributeName]=[UIColor whiteColor];
    
    [nav setTitleTextAttributes:dict];
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    if (self.viewControllers.count>0)
    {
        viewController.hidesBottomBarWhenPushed=YES;
    }
    [super pushViewController:viewController animated:YES];
    
    
}
@end
