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
#import <DXServices/DXServiceIntentProviderMapping.h>

@implementation DXTwitterService

- (id)init
{
    self = [super init];
    if (self) {
        [[DXServiceIntentProviderMapping shared] addMappingFromIntentClass:[DXTwittetPostTweetIntent class] toProviderClass:[DXTwitterServiceProvider class]];
    }
    return self;
}

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
