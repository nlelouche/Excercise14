//
//  Tweets.h
//  Excercise14
//
//  Created by TPG on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Twitter/Twitter.h"
#import "Accounts/Accounts.h"

@interface Tweets : NSObject


- (void)sendTweetFromViewController: (UIViewController*)root;
+ (BOOL)checkTweetingStatus;

@end
