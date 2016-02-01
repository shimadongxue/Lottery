//
//  UIImage+Extension.m
//  0827功能
//
//  Created by llairen on 15/8/28.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)
+(UIImage *)resizableImage:(NSString *)name
{
    UIImage *image=[UIImage imageNamed:name];
    CGFloat x=image.size.width*0.5-1;
    CGFloat y=image.size.height*0.5-1;
    CGFloat w=image.size.width*0.5-1;
    CGFloat h=image.size.height*0.5-1;
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(x, y, h, w)];
}
@end
