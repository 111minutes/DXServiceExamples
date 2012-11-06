//
//  DXTwitterService.h
//  TwitterServiceApp
//
//  Created by zen on 11/6/12.
//  Copyright (c) 2012 111Minutes. All rights reserved.
//

#import <DXServices/DXService.h>
#import <DXServices/DXServiceIntentProxy.h>

@interface DXTwitterService : DXService

- (DXServiceIntentProxy*)postTweet:(NSString*)tweet;

@end
