//
//  KSDetailViewController.m
//  proto1
//
//  Created by Kartik Shah on 11/8/12.
//  Copyright (c) 2012 Kartik Shah. All rights reserved.
//

#import "KSDetailViewController.h"
#import "KSSigninViewController.h"

@interface KSDetailViewController ()
//@property (strong, nonatomic) UIPopoverController *masterPopoverController;
@end

@implementation KSDetailViewController

//@synthesize masterPopoverController;

#pragma mark - Managing the detail item

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

-(void) viewDidAppear
{
    //[self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark -
#pragma mark Managing the popover

- (void)showRootPopoverButtonItem:(UIBarButtonItem *)barButtonItem {
    
    barButtonItem.title = NSLocalizedString(@"Menu", @"Menu");
    [self.navigationItem setLeftBarButtonItem:barButtonItem animated:YES];
}


- (void)invalidateRootPopoverButtonItem:(UIBarButtonItem *)barButtonItem {
    
    [self.navigationItem setLeftBarButtonItem:nil animated:YES];
}

@end
