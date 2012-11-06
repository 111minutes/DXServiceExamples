//
//  AppDelegate.m
//  TwitterServiceApp
//
//  Created by zen on 11/6/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "AppDelegate.h"
#import "DXTwitterService.h"
#import "RootControllerViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [RootControllerViewController new];
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
