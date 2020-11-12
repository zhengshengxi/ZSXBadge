//
//  ZSXViewController.m
//  ZSXBadge
//
//  Created by 314334043@qq.com on 11/13/2020.
//  Copyright (c) 2020 314334043@qq.com. All rights reserved.
//

#import "ZSXViewController.h"
#import "ZSXBadge.h"

@interface ZSXViewController ()

@end

@implementation ZSXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    UIView *v1 = [[UIView alloc]initWithFrame:CGRectMake(0, 100, 80, 80)];
    v1.center = CGPointMake(self.view.center.x, v1.center.y);
    v1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:v1];
    
    UIView *v2 = [[UIView alloc]initWithFrame:CGRectMake(0, 250, 80, 80)];
    v2.center = CGPointMake(self.view.center.x, v2.center.y);
    v2.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:v2];
    
    UIView *v3 = [[UIView alloc]initWithFrame:CGRectMake(0, 400, 80, 80)];
    v3.center = CGPointMake(self.view.center.x, v3.center.y);
    v3.backgroundColor = [UIColor grayColor];
    [self.view addSubview:v3];
    
    //红点
    [v1 zsx_showBadge];
    
    //数字
    [v2 zsx_showNumberBadgeWithBadgeNumber:20];
    
    //文本
    [v3 zsx_showTextBadgeWithText:@"New"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
