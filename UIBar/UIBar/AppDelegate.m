//
//  AppDelegate.m
//  UIBar
//
//  Created by mac on 15/12/12.
//  Copyright (c) 2015年 WuXiaoChuang. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //分栏控制器
    //创建 UITabBarController 继承于UIViewController
    
    UITabBarController *barcon = [[UITabBarController alloc]init];
    //设置barcon的前景色
//    barcon.tabBar.tintColor = [UIColor orangeColor];
    
    //设置tabBar的颜色;
//    barcon.tabBar.barTintColor = [UIColor cyanColor];
    self.window.backgroundColor = [UIColor brownColor];
    
    
    
    
    
    
    //创建firstvc
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    //创建一个系统提供的样式的item
    
    UITabBarItem *item1 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
    //设置firstvc的tabBarItem样式
    firstVC.tabBarItem = item1;
    //图片右上角出现一个数字3,即设置3条提示信息
    item1.badgeValue = @"3";
//    firstVC.tabBarItem.imageInsets = UIEdgeInsetsMake(0 , 0, 0, 10);
    //设置tabbarController所能控制的所有试图控制器
    barcon.viewControllers = @[firstVC];
    
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    //创建uitableitem,为文字夹图片的样式
    
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"你好" image:[UIImage imageNamed:@"news"]selectedImage:[UIImage imageNamed:@"file"]];
    secondVC.tabBarItem = item2;
    //设置内偏移量,就是图片放到视图上有点大,就上下左右挤压图片,图片变小,下面的参数就是要挤压的尺寸
    //一般tabBarItem的图片的大小都是30*30,像素60*60
//    secondVC.tabBarItem.imageInsets = UIEdgeInsetsMake(0, 0, 0, 0);
    
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    //创建tabbarController,使用标题+图片---tag样式
    //imageWithRenderingMode 可以对一张图片进行着色,并让图片显示原始颜色,点击不变色
    
    UITabBarItem *item3 = [[UITabBarItem alloc] initWithTitle:@"哈哈" image:[[UIImage imageNamed:@"file"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] tag:3];
    
    thirdVC.tabBarItem = item3;
//    thirdVC.tabBarItem.imageInsets = UIEdgeInsetsMake(5, 5, 5, 5);
    //设置barcon所能控制的所有试图控制器,默认显示第一个添加进去的第一个试图控制器
    barcon.viewControllers = @[firstVC,secondVC,thirdVC];
    //默认选中的vc的索引,就是viewControllers中的顺序,0,1,2...,同时也显示了这个视图
    barcon.selectedIndex = 1;
    //设置为windows的根视图
    self.window.rootViewController = barcon;
    
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
