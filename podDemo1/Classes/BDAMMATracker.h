//
//  BDAMMATracker.h
//  testLibrary
//
//  Created by 张子介 on 2019/5/5.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BDAMMATracker : NSObject
+ (instancetype)sharedInstance;
// 可视化监测曝光
- (void)viewURLs:(NSArray <NSString *> *)urls ad:(UIView *)adView;
@end

NS_ASSUME_NONNULL_END
