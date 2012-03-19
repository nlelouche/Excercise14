//
//  Ex14ViewController.h
//  Excercise14
//
//  Created by Nahuel Lelouche on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Twitter/Twitter.h"
#import "Accounts/Accounts.h"


@interface Ex14ViewController : UIViewController


@property (strong, nonatomic) IBOutlet UIButton *sendTweetButton;

- (IBAction)sendTweet:(id)sender;
- (void)checkTweetingStatus;

@end
