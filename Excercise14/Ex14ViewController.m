//
//  Ex14ViewController.m
//  Excercise14
//
//  Created by Nahuel Lelouche on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Ex14ViewController.h"
#import "Twitter/Twitter.h"
#import "UIViewController+TWTweet.h"

#define SUBMIT_IMAGE

@interface Ex14ViewController()


@end

@implementation Ex14ViewController

@synthesize sendTweetButton = _sendTweetButton;
@synthesize submitImage = _submitImage;


- (void)dealloc
{
    [_sendTweetButton release];
    [_submitImage release];
    [super dealloc];
}

- (IBAction)sendTweet:(id)sender {
    
    TWTweetComposeViewController *tweet = [[[TWTweetComposeViewController alloc] init] autorelease];
   
#ifdef SUBMIT_IMAGE    
    if (_submitImage.on){
            [tweet addImage:[UIImage imageNamed:@"Logo-TPG.png"]];
    }
#endif
    
    [self presentModalTWTweetViewController:tweet animated:YES];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    TWTweetComposeViewController *tweet = [[[TWTweetComposeViewController alloc] init] autorelease];
#ifdef SUBMIT_IMAGE    

        _submitImage = [[UISwitch alloc] initWithFrame:CGRectMake(200.0, 200.0, 100.0, 100.0)];
        UILabel *myLabel = [[[UILabel alloc] initWithFrame:CGRectMake(30.0, 185.0, 150.0, 50.0)] autorelease];
        myLabel.text = @"Submit TPG Logo";
        [self.view addSubview:myLabel];
        [self.view addSubview:_submitImage];

#endif    
    if ([tweet checkTweetingStatus]){
            self.sendTweetButton.enabled = YES;
            self.sendTweetButton.alpha = 1.0f;
    }
    else {
            self.sendTweetButton.enabled = NO;
            self.sendTweetButton.alpha = 0.5f;
    }


}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
