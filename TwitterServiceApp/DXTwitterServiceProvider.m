//
//  DXTwitterServiceProvider.m
//  TwitterServiceApp
//
//  Created by zen on 11/6/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "DXTwitterServiceProvider.h"
#import "DXTwittetPostTweetIntent.h"
#import <Twitter/Twitter.h>

@implementation DXTwitterServiceProvider

- (void)performIntent:(DXTwittetPostTweetIntent *)intent
{
    TWTweetComposeViewController *twitter = [[TWTweetComposeViewController alloc] init];
    
    [twitter setInitialText:intent.tweet];
    
    UIViewController *rootController = [[[[UIApplication sharedApplication] windows] objectAtIndex:0] rootViewController];
    
    twitter.completionHandler = ^(TWTweetComposeViewControllerResult res){
        if(res == TWTweetComposeViewControllerResultDone) {
            [intent finishWithResult:@"Done"];
        } else if(res == TWTweetComposeViewControllerResultCancelled) {
            [intent finishWithResult:@"Canceled"];
            [rootController dismissViewControllerAnimated:YES completion:nil];
        }
    };
    
    [rootController presentViewController:twitter animated:YES completion:nil];
}

@end
