//
//  MainTabBarViewController.m
//  MallProject
//
//  Created by YRL on 2019/6/5.
//  Copyright © 2019 heaven. All rights reserved.
//

#import "MainTabBarViewController.h"
#import "RootNavigationViewController.h"
#import "HomeViewController.h"
#import "MineViewController.h"


@interface MainTabBarViewController ()<UITabBarControllerDelegate>

@property (nonatomic, strong) NSMutableArray *vcs;

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    
    [self initTabBar];
    
    [self initChildrensVC];
}


- (void)initTabBar{
    
}

- (void)initChildrensVC {
    _vcs = @[].mutableCopy;
    HomeViewController *home = [[HomeViewController alloc]init];
    [self setupChildViewController:home title:@"首页" imageName:@"tab_home_nor" selectImageName:@"tab_home_sel"];
    
//    CategoryViewController *category = [[CategoryViewController alloc]init];
//    [self setupChildViewController:category title:@"精选" imageName:@"tab_video_nor" selectImageName:@"tab_video_sel"];
    
    MineViewController *mine = [[MineViewController alloc]init];
    [self setupChildViewController:mine title:@"我的" imageName:@"tab_mine_nor" selectImageName:@"tab_mine_sel"];
    
    self.viewControllers = _vcs;
}

- (void)setupChildViewController:(UIViewController *)controller title:(NSString *)title imageName:(NSString *)imageName selectImageName:(NSString *)selectImageName {
    controller.title = title;
    controller.tabBarItem.title = title;
    controller.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    controller.tabBarItem.selectedImage = [[UIImage imageNamed:selectImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [controller.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:kTabBarTitleNormalColor} forState:UIControlStateNormal];
    [controller.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:kTabBarTitleSelectColor} forState:UIControlStateSelected];
    // 外层添加导航控制器
    RootNavigationViewController *nav = [[RootNavigationViewController alloc]initWithRootViewController:controller];
    [_vcs addObject:nav];
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
