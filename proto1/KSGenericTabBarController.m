//
//  KSWatchTVTabBarController.m
//  proto1
//
//  Created by Kartik Shah on 1/26/13.
//  Copyright (c) 2013 Kartik Shah. All rights reserved.
//

#import "KSGenericTabBarController.h"
#import "KSAppDelegate.h"

@implementation KSGenericTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated  {
    NSLog(@"Hello");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(@"inViewDidLoad + %@", self.restorationIdentifier);
    
    KSAppDelegate* delegate = [[UIApplication sharedApplication] delegate];
    delegate.currentDetailController  = self.navigationController;
    
    //UIBarButtonItem *helpButton = [[UIBarButtonItem alloc] initWithTitle:@"Help" style:UIBarButtonSystemItemAdd target:self action:@selector(helpButton)];
    
    //UIBarButtonItem *signInButton = [[UIBarButtonItem alloc] initWithTitle:@"Sign Out" style:UIBarButtonItemStyleBordered target:self action:@selector(signIn)];
    
    //NSArray *rightBarButtonArray = [[NSArray alloc] initWithObjects:helpButton, signInButton, nil];
    
    //self.navigationItem.rightBarButtonItems  = rightBarButtonArray;
    //self.navigationItem.title = @"Prototype";

}

-(void) viewDidAppear:(BOOL)animated
{
    NSLog(@"ViewDidAppear");
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
