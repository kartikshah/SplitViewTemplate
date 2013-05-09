//
//  KSMasterViewController.m
//  proto1
//
//  Created by Kartik Shah on 11/8/12.
//  Copyright (c) 2012 Kartik Shah. All rights reserved.
//

#import "KSMasterViewController.h"
#import "KSAppDelegate.h"

@implementation KSMasterViewController

@synthesize splitViewController =_splitViewController;
@synthesize ksSplitViewDetailDelegate = _ksSplitViewDetailDelegate;

- (void)awakeFromNib
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        self.clearsSelectionOnViewWillAppear = NO;
        self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
    }
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"Called for Segue %@", sender);
    if (_ksSplitViewDetailDelegate.rootPopoverButtonItem != nil) {
        UIViewController<SubstitutableDetailViewController>* detailViewController = (UIViewController<SubstitutableDetailViewController>*)[segue.destinationViewController topViewController];
        [detailViewController showRootPopoverButtonItem:_ksSplitViewDetailDelegate.rootPopoverButtonItem];
    }
    
    if (_ksSplitViewDetailDelegate.popoverController != nil) {
        [_ksSplitViewDetailDelegate.popoverController dismissPopoverAnimated:YES];
    }
}

@end
