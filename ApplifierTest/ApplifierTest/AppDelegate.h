//
//  AppDelegate.h
//  ApplifierTest
//
//  Created by Fritz Huie on 7/29/15.
//  Copyright (c) 2015 Fritz Huie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UnityAds/UnityAds.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (void)unityAdsVideoCompleted:(NSString *)rewardItemKey skipped:(BOOL)skipped;


@end

