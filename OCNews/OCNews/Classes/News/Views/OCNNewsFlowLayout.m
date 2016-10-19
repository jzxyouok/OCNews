//
//  OCNNewsFlowLayout.m
//  OCNews
//
//  Created by 吕成翘 on 16/10/20.
//  Copyright © 2016年 Apress. All rights reserved.
//

#import "OCNNewsFlowLayout.h"


@implementation OCNNewsFlowLayout

- (instancetype)init{
    if (self = [super init]) {
        [self setupLayout];
    }
    return self;
}

- (void)prepareLayout{
    [super prepareLayout];
    
    self.itemSize = self.collectionView.bounds.size;
}

- (void)setupLayout{
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.minimumLineSpacing = 0;
    self.minimumInteritemSpacing = 0;
}

@end
