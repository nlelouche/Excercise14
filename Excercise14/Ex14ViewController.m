//
//  Ex14ViewController.m
//  Excercise14
//
//  Created by Nahuel Lelouche on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Ex14ViewController.h"


@implementation Ex14ViewController

@synthesize sendTweetButton;


- (IBAction)sendTweet:(id)sender {
    
    // Set up the built-in twitter composition view controller.
    TWTweetComposeViewController *tweetViewController = [[TWTweetComposeViewController alloc] init];
    
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
        
        // Dismiss the tweet composition view controller.
        [self dismissModalViewControllerAnimated:YES];
    }];
    
    // Present the tweet composition view controller modally.
    [self presentModalViewController:tweetViewController animated:YES];    
    
}

- (void)checkTweetingStatus {
    
    if ([TWTweetComposeViewController canSendTweet]) {
        self.sendTweetButton.enabled = YES;
        self.sendTweetButton.alpha = 1.0f;
    } else {
        self.sendTweetButton.enabled = NO;
        self.sendTweetButton.alpha = 0.5f;
    }
     
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self checkTweetingStatus];

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
