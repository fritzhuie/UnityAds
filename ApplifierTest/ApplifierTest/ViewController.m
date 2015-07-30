//
//  ViewController.m
//  ApplifierTest
//
//  Created by Fritz Huie on 7/29/15.
//  Copyright (c) 2015 Fritz Huie. All rights reserved.
//

#import "ViewController.h"
@import SystemConfiguration;
@import CFNetwork;


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showAdPressed:(id)sender {
    
    [[UnityAds sharedInstance] setDelegate:self];
    
    [[UnityAds sharedInstance] setZone:@"rewardedVideoZone"];
    
    
    NSLog(@"pressed");
    // Use the canShow method to check for zone readiness,
    //  then use the canShowAds method to check for ad readiness.
    if ([[UnityAds sharedInstance] canShow])
    {
        // If both are ready, show the ad.
        [[UnityAds sharedInstance] show];
    }else{
        NSLog(@"canShow is false");
    }
    
}

- (void)unityAdsVideoCompleted:(NSString *)rewardItemKey skipped:(BOOL)skipped{
    
}

@end
