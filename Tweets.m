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
    
    // Set up the built-in twitter composition view controller.
    TWTweetComposeViewController *tweetViewController = [[[TWTweetComposeViewController alloc] init] autorelease];
    
    // Set the initial tweet text. See the framework for additional properties that can be set.
    [tweetViewController setInitialText:@""];
    
    // Create the completion handler block.
    [tweetViewController setCompletionHandler:^(TWTweetComposeViewControllerResult result) {
        NSString *output;
        
        switch (result) {
            case TWTweetComposeViewControllerResultCancelled:
                // The cancel button was tapped.
                output = @"Tweet cancelled.";
                break;
            case TWTweetComposeViewControllerResultDone:
                // The tweet was sent.
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
