//
//  MLBarButtonItem.h
//  Lottery
//
//  Created by llairen on 15/9/17.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MLBarButtonItem : UIBarButtonItem
+(UIBarButtonItem *)barButtonItemWithImage:(NSString *)imageName setTitle:(NSString *)title rect:(CGRect)frame target:(id)target action:(SEL)action;
@end
