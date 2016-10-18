//
//  OCNMainNavigationController.m
//  OCNews
//
//  Created by 吕成翘 on 16/10/18.
//  Copyright © 2016年 Apress. All rights reserved.
//

#import "OCNMainNavigationController.h"


@interface OCNMainNavigationController ()

@end


@implementation OCNMainNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

#pragma mark - Set up user interface
- (void)setupUI {
    //取消navigationBar下分界线
    self.navigationBar.translucent = NO;
    //设置navigationBar的颜色
    self.navigationBar.barTintColor = [UIColor redColor];
}

//解决push到子控制器时tabbar不隐藏的问题
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

@end
