//
//  viewAbilityDemoVC.m
//  podDemo1_Example
//
//  Created by 张子介 on 2019/5/6.
//  Copyright © 2019 echoZZJ. All rights reserved.
//

#import "viewAbilityDemoVC.h"
#import <podDemo1/BDAMMATracker.h>
@interface viewAbilityDemoVC ()

@end

@implementation viewAbilityDemoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    UIView *testView = [UIView new];
    testView.backgroundColor = [UIColor redColor];
    testView.frame = CGRectMake(0, 0, 300, 300);
    UIScrollView *testContainer = [UIScrollView new];
    testContainer.frame = CGRectMake(0, 100, screenWidth, screenHeight - 200);
    testContainer.contentSize = CGSizeMake(screenWidth, screenHeight*2);

    [self.view addSubview:testContainer];
    testView.center = testContainer.center;
    [testContainer addSubview:testView];
     NSString *url = @"http://v.admaster.com.cn/i/a90981,b1899467,c2,i0,m202,8a2,8b2,h,2p,2jtt,2w15,2x1101,2d1234,va1,2g0101";
    [[BDAMMATracker sharedInstance] viewURLs:@[url] ad:testView];
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
