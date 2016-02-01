//
//  ProductsModel.h
//  Lottery
//
//  Created by llairen on 15/9/21.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProductsModel : NSObject
//"title": "网易电影票",
//"id": "com.netease.movie",
//"url": "http://itunes.apple.com/app/id583784224?mt=8",
//"icon": "movie@2x.png",
//"customUrl": "movieticket163"
@property (nonatomic, strong)NSString *title;

@property (nonatomic, strong)NSString *ID;

@property (nonatomic, strong)NSString *url;

@property (nonatomic, strong)NSString *icon;

@property (nonatomic, strong)NSString *customUrl;
+(instancetype)productsWithDict:(NSDictionary *)dict;
-(instancetype)initWithDict:(NSDictionary *)dict;
@end
