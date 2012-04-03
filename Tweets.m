//
//  Tweets.m
//  Excercise14
//
//  Created by TPG on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Tweets.h"

@implementation Tweets


- (void)sendTweetFromViewController: (UIViewController*)root
{
    
    TWTweetComposeViewController *tweetViewController = [[[TWTweetComposeViewController alloc] init] autorelease];
    
    [tweetViewController setInitialText:@""];
    
    [tweetViewController setCompletionHandler:^(TWTweetComposeViewControllerResult result) {
        NSString *output;
        
        switch (result) {
            case TWTweetComposeViewControllerResultCancelled:
                output = @"Tweet cancelled.";
                break;
            case TWTweetComposeViewControllerResultDone:
                output = @"Tweet sent.";
                break;
            default:
                break;
        }
        
        NSLog( @"%@", output );
        [root dismissModalViewControllerAnimated:YES];
    }];
    
    [root presentModalViewController:tweetViewController animated:YES];    
    
}

+ (BOOL)checkTweetingStatus {
    
    if ([TWTweetComposeViewController canSendTweet]) {
        return YES;
    } else {
        return NO;
    }
    
}


@end
