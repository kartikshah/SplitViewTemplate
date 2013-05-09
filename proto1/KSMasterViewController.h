//
//  KSMasterViewController.h
//  proto1
//
//  Created by Kartik Shah on 11/8/12.
//  Copyright (c) 2012 Kartik Shah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KSSplitViewDetailDelegate.h"

@interface KSMasterViewController : UITableViewController <UISplitViewControllerDelegate>

@property (nonatomic, strong) UISplitViewController *splitViewController;
@property (strong, nonatomic) KSSplitViewDetailDelegate *ksSplitViewDetailDelegate;

@end
