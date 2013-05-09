//
//  KSSplitViewDetailDelegate.m
//  proto1
//
//  Created by Kartik Shah on 5/7/13.
//  Copyright (c) 2013 Kartik Shah. All rights reserved.
//

#import "KSSplitViewDetailDelegate.h"

@implementation KSSplitViewDetailDelegate

@synthesize splitViewController = _splitViewController;
@synthesize detailControllers = _detailControllers;
@synthesize currentDetailController = _currentDetailController;
@synthesize popoverController = _popoverController;
@synthesize rootPopoverButtonItem = _rootPopoverButtonItem;

-(id)initWithSplitViewController:(UISplitViewController *)splitViewController AndViewControllers:(NSArray *)detailControllers
{
    self = [super init];
    if(self)
    {
        _splitViewController = splitViewController;
        _detailControllers = [detailControllers copy];
        _splitViewController.viewControllers = _detailControllers;

        UINavigationController* detailNavController = [_detailControllers objectAtIndex:1];
        _currentDetailController = detailNavController;
        
    }
    return self;
}

#pragma mark - UISplitViewControllerDelegate

- (void)splitViewController:(UISplitViewController*)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem*)barButtonItem forPopoverController:(UIPopoverController*)pc {
    
    // Keep references to the popover controller and the popover button, and tell the detail view controller to show the button.
    barButtonItem.title = @"Root View Controller";
    self.popoverController = pc;
    self.rootPopoverButtonItem = barButtonItem;
    UIViewController <SubstitutableDetailViewController> *detailViewController = (UIViewController<SubstitutableDetailViewController>*)[[_splitViewController.viewControllers objectAtIndex:1] topViewController];
    [detailViewController showRootPopoverButtonItem:self.rootPopoverButtonItem];
}


- (void)splitViewController:(UISplitViewController*)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem {
    
    // Nil out references to the popover controller and the popover button, and tell the detail view controller to hide the button.
    UIViewController <SubstitutableDetailViewController> *detailViewController = (UIViewController<SubstitutableDetailViewController>*)[[_splitViewController.viewControllers objectAtIndex:1] topViewController];
    [detailViewController invalidateRootPopoverButtonItem:self.rootPopoverButtonItem];
    self.popoverController = nil;
    self.rootPopoverButtonItem = nil;
}

- (void)splitViewController:(UISplitViewController*)svc popoverController:(UIPopoverController*)pc willPresentViewController:(UIViewController *)aViewController{
    if ([self.popoverController isPopoverVisible]) {
        [self.popoverController dismissPopoverAnimated:YES];
    }
}

- (BOOL)splitViewController:(UISplitViewController *)svc shouldHideViewController:(UIViewController *)vc inOrientation:(UIInterfaceOrientation)orientation
{
    return YES;
}

@end
