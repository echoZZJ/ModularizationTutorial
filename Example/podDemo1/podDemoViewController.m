//
//  podDemoViewController.m
//  podDemo1
//
//  Created by echoZZJ on 05/05/2019.
//  Copyright (c) 2019 echoZZJ. All rights reserved.
//

#import "podDemoViewController.h"
#import <podDemo1/BDAMMATracker.h>
#import "viewAbilityDemoVC.h"
@interface podDemoViewController ()

@end

@implementation podDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor orangeColor];
    btn.frame = CGRectMake(0, 0, 100, 100);
    btn.center = self.view.center;
    [btn setTitle:@"点我" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)click:(UIButton *)sender {
    viewAbilityDemoVC *demoVC = [viewAbilityDemoVC new];
    [self.navigationController pushViewController:demoVC animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
