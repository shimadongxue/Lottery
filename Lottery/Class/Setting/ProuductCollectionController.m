//
//  ProuductCollectionController.m
//  Lottery
//
//  Created by llairen on 15/9/21.
//  Copyright (c) 2015年 llairen. All rights reserved.
//

#import "ProuductCollectionController.h"
#import "ProductsModel.h"
#import "ProductsCollectionViewCell.h"
@interface ProuductCollectionController ()
@property (nonatomic, strong)NSArray *data;
@end

@implementation ProuductCollectionController

static NSString * const reuseIdentifier = @"Cell";

-(NSArray *)data
{
    if (_data==nil)
    {
        NSString * path=[[NSBundle mainBundle]pathForResource:@"products.json" ofType:nil];
        NSData * data=[NSData dataWithContentsOfFile:path];
        NSArray * array=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        NSMutableArray * dictModel=[NSMutableArray array];
         for (NSDictionary * dict in array)
         {
             ProductsModel * model=[ProductsModel productsWithDict:dict];
             [dictModel addObject:model];
         }
        _data=dictModel;
    }
    return _data;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.data.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ProductsCollectionViewCell *cell=[ProductsCollectionViewCell cellWithCollectionView:collectionView];
    ProductsModel * model=self.data[indexPath.row];
    cell.model=model;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
