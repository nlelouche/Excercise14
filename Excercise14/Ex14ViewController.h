//
//  Ex14ViewController.h
//  Excercise14
//
//  Created by Nahuel Lelouche on 3/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Ex14ViewController : UIViewController


@property (retain, nonatomic) IBOutlet UIButton *sendTweetButton;
@property (nonatomic, retain) IBOutlet UISwitch *submitImage;

- (IBAction)sendTweet:(id)sender;

@end
