//
//  ViewController.m
//  UIBar
//
//  Created by mac on 15/12/12.
//  Copyright (c) 2015年 WuXiaoChuang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	UITabBar *tabbar = [[UITabBar alloc]initWithFrame:CGRectMake(0, 200, 320, 40)];
    tabbar.barTintColor = [UIColor orangeColor];
    [self.view addSubview:tabbar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
