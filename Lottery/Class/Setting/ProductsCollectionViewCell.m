//
//  ProductsCollectionViewCell.m
//  Lottery
//
//  Created by llairen on 15/9/21.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "ProductsCollectionViewCell.h"

@interface ProductsCollectionViewCell ()
@property (nonatomic, strong)UIImageView  *imageView;
@property (nonatomic, strong)UILabel *labelView;

@end


@implementation ProductsCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
}
-(UIImageView *)imageView
{
    if (_imageView==nil)
    {
        _imageView=[[UIImageView alloc]init];
    }
    return _imageView;
}
+(instancetype)cellWithCollectionView:(UICollectionView)collectionView
{
    static NSString * strID=@"cell";
    ProductsCollectionViewCell *cell=
}
-(UILabel *)labelView
{
    if (_labelView==nil) {
        _labelView=[[UILabel alloc]init];
        _labelView.font=[UIFont systemFontOfSize:13];
        _labelView.textAlignment=NSTextAlignmentCenter;
        
    }
    return _labelView;
}
-(void)setModel:(ProductsModel *)model
{
    _model=model;
    self.imageView.image=[UIImage imageNamed:self.model.icon];
    self.labelView.text=self.model.title;
}
-(void)layoutSubviews
{
    self.frame=CGRectMake(0, 0, 80, 80);
    CGFloat imageX=10;
    CGFloat imageY=0;
    CGFloat imageW=self.frame.size.width-2*imageX;
    CGFloat imageH=imageW;
    self.imageView.frame=CGRectMake(imageX, imageY, imageW, imageH);
    CGFloat labelX=0;
    CGFloat labelY=CGRectGetMaxY(self.imageView.frame);
    CGFloat labelW=self.frame.size.width;
    CGFloat labelH=self.frame.size.height-2*imageX;
    self.labelView.frame=CGRectMake(labelX, labelY, labelW, labelH);
}
@end
