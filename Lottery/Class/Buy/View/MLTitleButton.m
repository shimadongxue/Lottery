//
//  MLTitleButton.m
//  Lottery
//
//  Created by llairen on 15/9/17.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "MLTitleButton.h"



@implementation MLTitleButton

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame])
    {
        [self setButton];
    }
    return self;
}
-(void)setButton
{
    self.imageView.contentMode=UIViewContentModeCenter;
}
-(CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleX=0;
    CGFloat titleY=0;
    NSDictionary * dict=@{NSFontAttributeName:[UIFont systemFontOfSize:19]};
    CGFloat titleW=[self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size.width;
    CGFloat titleH=contentRect.size.height;
    return CGRectMake(titleX, titleY, titleW, titleH);
    
}
-(CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageW=30;
    CGFloat imageH=contentRect.size.height;
    CGFloat imageX=contentRect.size.width-imageW;
    CGFloat imageY=0;
    return CGRectMake(imageX, imageY, imageW, imageH);
    
}
@end
