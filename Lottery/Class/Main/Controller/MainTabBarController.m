//
//  MainTabBarController.m
//  Lottery
//
//  Created by llairen on 15/9/16.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "MainTabBarController.h"
#import "HallTableController.h"
#import "BuyViewController.h"
#import "MessageViewController.h"
#import "LuckyViewController.h"
#import "MeViewController.h"

#import "MainNavigationController.h"



@implementation MainTabBarController


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    for(UIView *v in self.tabBar.subviews){
        if ([v isKindOfClass:[UIControl class]])
        {
            [v removeFromSuperview];
        }
        
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];

    MLTabBar * tabBar=[[MLTabBar alloc]init];
    tabBar.frame=self.tabBar.bounds;
    
    tabBar.delegate=self;
    //购彩大厅  用nav进行封装
    HallTableController * hallVC= [[HallTableController alloc]initWithStyle:UITableViewStylePlain];
    [self addChildControllerWithName:hallVC];
    
    //合买大厅
    BuyViewController * buyVC=[[BuyViewController alloc]init];
    [self addChildControllerWithName:buyVC];
    
    //开奖信息
    MessageViewController * messageVC=[[MessageViewController alloc]init];
    [self addChildControllerWithName:messageVC];
    
    //幸运选号
    LuckyViewController * luckyVC=[[LuckyViewController alloc]init];
    [self addChildControllerWithName:luckyVC];
    
    //我的彩票
    MeViewController * meVC=[[MeViewController alloc]init];
    [self addChildControllerWithName:meVC];
    
    for (int i=0; i<self.viewControllers.count;i++)
    {
        NSString * name=[NSString stringWithFormat:@"TabBar%d",i+1];
        NSString * selectName=[NSString stringWithFormat:@"TabBar%dSel",i+1];
        [tabBar addTabButtonWithName:name selectedName:selectName];
    }
    [self.tabBar addSubview:tabBar];
    
    
   
}

-(void)addChildControllerWithName:(UIViewController *)VC
{
    
    MainNavigationController * nav=[[MainNavigationController alloc]initWithRootViewController:VC];
    [self addChildViewController:nav];
}
-(void)table:(MLTabBar *)tabBar didSelectButtonFrom:(int)from to:(int)to
{
    self.selectedIndex=to;
}

@end
