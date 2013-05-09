//
//  KSSigninViewController.m
//  proto1
//
//  Created by Kartik Shah on 12/28/12.
//  Copyright (c) 2012 Kartik Shah. All rights reserved.
//

#import "KSSigninViewController.h"

@implementation KSSigninViewController

@synthesize popoverSegue;
//@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)login:(id)sender {
    NSLog(@"LOGIN CLICKED");
    //[delegate.signInButton setTitle:@"Sign Out"];
    [popoverSegue.popoverController dismissPopoverAnimated:YES ];
}

- (IBAction)cancel:(id)sender {
    NSLog(@"CANCEL CLICKED");
    //[delegate.signInButton setTitle:@"Sign In"];
    [popoverSegue.popoverController dismissPopoverAnimated:YES ];
}

@end
