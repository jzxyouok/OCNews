//
//  OCNMainTabBarController.m
//  OCNews
//
//  Created by 吕成翘 on 16/10/18.
//  Copyright © 2016年 Apress. All rights reserved.
//

#import "OCNMainTabBarController.h"
#import "OCNMainNavigationController.h"


@interface OCNMainTabBarController ()

@end


@implementation OCNMainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

#pragma mark - Set up user interface
- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
    
    OCNMainNavigationController *newsNavigationController = [self navigationControllerWithClassName:@"OCNNewsViewController" title:@"新闻" imageName:@"news"];
    OCNMainNavigationController *mediaNavigationController = [self navigationControllerWithClassName:@"OCNMediaViewController" title:@"直播" imageName:@"media"];
    OCNMainNavigationController *barNavigationController = [self navigationControllerWithClassName:@"OCNBarViewController" title:@"话题" imageName:@"bar"];
    OCNMainNavigationController *meNavigationController = [self navigationControllerWithClassName:@"OCNMeViewController" title:@"我" imageName:@"me"];
    
    self.viewControllers = @[newsNavigationController, mediaNavigationController, barNavigationController, meNavigationController];
}

/**
 *  根据视图控制器类名创建带导航控制器的视图控制器对象
 *
 *  @param ClassName 视图控制器的类名
 *  @param title     视图控制器的标题
 *  @param imageName 视图控制器的图标名称
 *
 *  @return 带导航控制器的视图控制器对象
 */
- (OCNMainNavigationController *)navigationControllerWithClassName:(NSString *)ClassName title:(NSString *)title imageName:(NSString *)imageName{
    Class cls = NSClassFromString(ClassName);
    UIViewController *viewController = [[cls alloc] init];
    viewController.tabBarItem.title = title;
    [viewController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateSelected];
    viewController.tabBarItem.image = [[UIImage imageNamed:[NSString stringWithFormat:@"tabbar_icon_%@_normal",imageName]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"tabbar_icon_%@_highlight",imageName]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    OCNMainNavigationController *navigationController = [[OCNMainNavigationController alloc] initWithRootViewController:viewController];
    return navigationController;
}

@end
