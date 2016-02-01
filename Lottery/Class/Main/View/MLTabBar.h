//
//  MLTabBar.h
//  Lottery
//
//  Created by llairen on 15/9/16.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MLTabButton;
@class MLTabBar;

@protocol MLTabBarDelegate <NSObject>

@optional
-(void)table:(MLTabBar *)tabBar didSelectButtonFrom:(int )from to:(int)to;

@end


@interface MLTabBar : UIView
@property(weak, nonatomic)id<MLTabBarDelegate> delegate;


@property(strong, nonatomic)MLTabButton * selecteButton;
-(void)addTabButtonWithName:(NSString *)name selectedName:(NSString *)selectedName;
@end
