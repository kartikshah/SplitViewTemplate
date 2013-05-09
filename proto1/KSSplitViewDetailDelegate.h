//
//  KSSplitViewDetailDelegate.h
//  proto1
//
//  Created by Kartik Shah on 5/7/13.
//  Copyright (c) 2013 Kartik Shah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubstitutableDetailViewController.h"

@interface KSSplitViewDetailDelegate : NSObject<UISplitViewControllerDelegate>

@property (weak, nonatomic) UISplitViewController *splitViewController;
@property (weak, nonatomic) UINavigationController *currentDetailController;
@property (strong, nonatomic) NSArray* detailControllers;

@property (nonatomic, retain) UIPopoverController *popoverController;
@property (nonatomic, retain) UIBarButtonItem *rootPopoverButtonItem;

-(id) initWithSplitViewController:(UISplitViewController*) splitViewController AndViewControllers:(NSArray*)detailControllers;

@end
