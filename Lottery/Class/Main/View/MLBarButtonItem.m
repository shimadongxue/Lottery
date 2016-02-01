//
//  MLBarButtonItem.m
//  Lottery
//
//  Created by llairen on 15/9/17.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "MLBarButtonItem.h"

@implementation MLBarButtonItem
+(UIBarButtonItem *)barButtonItemWithImage:(NSString *)imageName setTitle:(NSString *)title rect:(CGRect )frame target:(id)target action:(SEL)action
{
    UIButton * button=[[UIButton alloc]init];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    button.titleLabel.font=[UIFont systemFontOfSize:16];
    
    button.frame=frame;
    button.imageEdgeInsets=UIEdgeInsetsMake(0, -5, 0, 5);
    [button setTitle:title forState:UIControlStateNormal];
    
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    MLBarButtonItem * btnItem=[[MLBarButtonItem alloc]initWithCustomView:button];
    

    return btnItem;
}
@end
