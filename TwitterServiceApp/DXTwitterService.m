//
//  DXTwitterService.m
//  TwitterServiceApp
//
//  Created by zen on 11/6/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import "DXTwitterService.h"
#import "DXTwittetPostTweetIntent.h"
#import "DXTwitterServiceProvider.h"

@implementation DXTwitterService

- (id <DXServiceProvider>)serviceProviderForIntentClass:(Class)IntentClass
{
    return [DXTwitterServiceProvider new];
}

- (DXServiceIntentProxy*)postTweet:(NSString*)tweet
{
    return [self buildProxyForIntentClass:[DXTwittetPostTweetIntent class] constructor:^(DXTwittetPostTweetIntent *intent) {
        intent.tweet = tweet;
    }];
}

@end
