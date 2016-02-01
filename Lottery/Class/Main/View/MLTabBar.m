//
//  MLTabBar.m
//  Lottery
//
//  Created by llairen on 15/9/16.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "MLTabBar.h"
#import "MLTabButton.h"
@interface MLTabBar ()


@end
@implementation MLTabBar

-(instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if(self){
        
    }
    return self;
}

-(void)addTabButtonWithName:(NSString *)name selectedName:(NSString *)selectedName
{
    MLTabButton * button=[MLTabButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:selectedName] forState:UIControlStateSelected];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDown];
   
    [self addSubview:button];
    if (self.subviews.count==1)
    {
        [self buttonClick:button];
        
    }
    
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    int count =(int)self.subviews.count;
    for (int i=0; i<count;i++)
    {
        UIButton * button=self.subviews[i];
        button.tag=i;
        CGFloat buttonW=self.frame.size.width/count;
        CGFloat buttonH=self.frame.size.height;
        CGFloat buttonX=i*buttonW;
        CGFloat buttonY=0;
        button.frame=CGRectMake(buttonX, buttonY, buttonW, buttonH) ;
    }
}
-(void)buttonClick:(MLTabButton *)sender
{
  
    if([self.delegate respondsToSelector:@selector(table:didSelectButtonFrom:to:)]){
        [self.delegate table:self didSelectButtonFrom:(int)self.selecteButton.tag to:(int)sender.tag];
    }

    self.selecteButton.selected=NO;
    
    sender.selected=YES;
    
    self.selecteButton=(MLTabButton *)sender;
}
@end
