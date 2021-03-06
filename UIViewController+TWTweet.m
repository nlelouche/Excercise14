//
//  UIViewController+TWTweet.m
//  Excercise14
//
//  Created by TPG on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIViewController+TWTweet.h"
#import "Twitter/Twitter.h"
#import "Accounts/Accounts.h"


@implementation UIViewController (TWTweet)

- (void)presentModalTWTweetViewController:(TWTweetComposeViewController *)tweetViewController animated:(BOOL)animated
{
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
        [self dismissModalViewControllerAnimated:YES];
    }];
    
    [self presentModalViewController:tweetViewController animated:YES]; 
}

- (BOOL)checkTweetingStatus {
    
    if ([TWTweetComposeViewController canSendTweet]) {
        return YES;
    } else {
        return NO;
    }
    
}

@end
