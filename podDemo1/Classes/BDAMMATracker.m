//
//  BDAMMATracker.m
//  testLibrary
//
//  Created by 张子介 on 2019/5/5.
//

#import "BDAMMATracker.h"
#import "MobileTracking.h"
@implementation BDAMMATracker
+ (instancetype)sharedInstance {
    static BDAMMATracker *tracker;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tracker = [BDAMMATracker new];
        [[MobileTracking sharedInstance] enableLog:YES];
        [tracker registerNotifications];
    });
    return tracker;
}
- (void)registerNotifications {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationWillEnterForegroundNotification) name:UIApplicationWillEnterForegroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationDidEnterBackgroundNotification) name:UIApplicationDidEnterBackgroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(applicationwillTerminate) name:UIApplicationWillTerminateNotification object:nil];
}
- (void)viewURLs:(NSArray<NSString *> *)urls ad:(UIView *)adView {
    for (NSString * url in urls) {
        [self view:url ad:adView];
    }
}
- (void)view:(NSString *)url ad:(UIView *)adView {
    if (!url || !url.length) {
        return;
    }
    [[MobileTracking sharedInstance] view:url ad:adView];
}
#pragma mark - notifications

- (void)applicationWillEnterForegroundNotification {
    [[MobileTracking sharedInstance] didEnterForeground];
}

- (void)applicationDidEnterBackgroundNotification {
    [[MobileTracking sharedInstance] didEnterBackground];
}

- (void)applicationwillTerminate {
    [[MobileTracking sharedInstance] willTerminate];
}

@end
