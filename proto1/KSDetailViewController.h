//
//  KSDetailViewController.h
//  proto1
//
//  Created by Kartik Shah on 11/8/12.
//  Copyright (c) 2012 Kartik Shah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KSMasterViewController.h"
#import "SubstitutableDetailViewController.h"


@interface KSDetailViewController : UIViewController <SubstitutableDetailViewController>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *signInButton;
@end
