//
//  RootNavigationViewController.m
//  MallProject
//
//  Created by YRL on 2019/6/5.
//  Copyright © 2019 heaven. All rights reserved.
//

#import "RootNavigationViewController.h"

@interface RootNavigationViewController ()<UIGestureRecognizerDelegate>

@end

@implementation RootNavigationViewController

+ (void)initialize {
    
    UINavigationBar *navBar = [UINavigationBar appearance];
    [navBar setTintColor:kNavTitleColor];
    [navBar setTitleTextAttributes:@{NSForegroundColorAttributeName:kNavTitleColor, NSFontAttributeName:[UIFont systemFontOfSize:18]}];
    
//    [navBar setBarTintColor:kNavTitleColor];//设置导航背景色
//    [navBar setBackgroundImage:[UIImage imageWithColor:kNavBackgroundColor] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
//    [navBar setShadowImage:[UIImage new]];// 去掉阴影线
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 默认开启系统右滑返回
    self.interactivePopGestureRecognizer.enabled = YES;
    self.interactivePopGestureRecognizer.delegate = self;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
    
    // 修改tabBar的frame
    CGRect frame = self.tabBarController.tabBar.frame;
    frame.origin.y = [UIScreen mainScreen].bounds.size.height - frame.size.height;
    self.tabBarController.tabBar.frame = frame;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
