//
//  Ex14ViewController.m
//  Excercise14
//
//  Created by Nahuel Lelouche on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Ex14ViewController.h"
//#import "Tweets.h"
#import "Twitter/Twitter.h"
#import "UIViewController+TWTweet.h"

@interface Ex14ViewController()
//@property (nonatomic, retain) Tweets *tweetObject;

@end

@implementation Ex14ViewController

@synthesize sendTweetButton = _sendTweetButton;
@synthesize submitImage = _submitImage;
//@synthesize tweetObject =_tweetObject;

- (void)dealloc
{
    [_sendTweetButton release];
//    [_tweetObject release];
    [super dealloc];
}
/*
- (Tweets*)tweetObject
{
    if (_tweetObject == nil) {
        _tweetObject = [[Tweets alloc] init];
    }
    return _tweetObject;
}
*/
- (IBAction)sendTweet:(id)sender {
    
    TWTweetComposeViewController *tweet = [[[TWTweetComposeViewController alloc] init] autorelease];
    //http://www.raywenderlich.com/5519/beginning-twitter-in-ios-5
    if (_submitImage.on){
            [tweet addImage:[UIImage imageNamed:@"Logo-TPG.png"]];
    }

  //  [tweet addURL:[NSURL URLWithString:@"http://www.threepillarglobal.com/"]];
    [self presentModalTWTweetViewController:tweet animated:YES];
    //[self.tweetObject sendTweetFromViewController:self];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    TWTweetComposeViewController *tweet = [[[TWTweetComposeViewController alloc] init] autorelease];
    
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
