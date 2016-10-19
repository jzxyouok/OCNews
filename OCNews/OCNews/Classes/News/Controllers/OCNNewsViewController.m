//
//  OCNNewsViewController.m
//  OCNews
//
//  Created by 吕成翘 on 16/10/18.
//  Copyright © 2016年 Apress. All rights reserved.
//

#import "OCNNewsViewController.h"
#import "OCNNewsFlowLayout.h"


@interface OCNNewsViewController ()

@end


@implementation OCNNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupNavigationItem];
    [self setupUI];
}

#pragma mark - Set up navigation item
- (void)setupNavigationItem {
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"news_header_logo"]];
    imageView.frame = CGRectMake(0, 0, 70, 33);
    self.navigationItem.titleView = imageView;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImageName:@"search_icon" target:self action:@selector(searchButtonAction)];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImageName:@"nav_live_room_image" target:self action:@selector(liveButtonAction)];
}

#pragma mark - Set up user interface
- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIScrollView *channelScrollView = [[UIScrollView alloc] init];
    channelScrollView.backgroundColor = [UIColor colorWithrandomColor];
    channelScrollView.showsVerticalScrollIndicator = NO;
    channelScrollView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:channelScrollView];
    
    UICollectionView *newsCollectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:[[OCNNewsFlowLayout alloc] init]];
    newsCollectionView.backgroundColor = [UIColor colorWithrandomColor];
    newsCollectionView.pagingEnabled = YES;
    [self.view addSubview:newsCollectionView];
    
    [channelScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(self.view);
        make.height.mas_equalTo(44);
    }];
    
    [newsCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(channelScrollView.mas_bottom);
        make.left.right.equalTo(channelScrollView);
        make.bottom.equalTo(self.view);
    }];
}

#pragma mark - Button action
- (void)searchButtonAction {
    NSLog(@"点击了搜索");
}

- (void)liveButtonAction {
    NSLog(@"点击了直播");
}

@end
