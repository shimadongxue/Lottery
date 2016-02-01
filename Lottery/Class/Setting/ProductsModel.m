//
//  ProductsModel.m
//  Lottery
//
//  Created by llairen on 15/9/21.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "ProductsModel.h"

@implementation ProductsModel
+(instancetype)productsWithDict:(NSDictionary *)dict
{
    
    
    return [[self alloc]initWithDict:dict];
}
-(instancetype)initWithDict:(NSDictionary *)dict
{
    if (self=[super init])
    {
        self.title=dict[@"title"];
        self.icon=dict[@"icon"];
    }
    return self;
}
@end
