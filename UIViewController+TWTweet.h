//
//  UIViewController+TWTweet.h
//  Excercise14
//
//  Created by TPG on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TWTweetComposeViewController;

@interface UIViewController (TWTweet)

- (void)presentModalTWTweetViewController:(TWTweetComposeViewController *)tweetViewController animated:(BOOL)animated;
- (BOOL)checkTweetingStatus;

@end
