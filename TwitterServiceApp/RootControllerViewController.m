//
//  RootControllerViewController.m
//  TwitterServiceApp
//
//  Created by zen on 11/6/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "RootControllerViewController.h"
#import "DXTwitterService.h"

@implementation RootControllerViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    DXServiceIntentProxy *postTweet = [[DXTwitterService shared] postTweet:@"new tweet!"];
    
    [postTweet onSuccess:^(id result) {
        NSLog(@"Finish with result = %@", result);
    }];
    
    [postTweet perform];
}

@end
