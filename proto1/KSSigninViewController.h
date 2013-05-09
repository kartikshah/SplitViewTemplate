//
//  KSSigninViewController.h
//  proto1
//
//  Created by Kartik Shah on 12/28/12.
//  Copyright (c) 2012 Kartik Shah. All rights reserved.
//

#import <UIKit/UIKit.h>

//@class KSGlobalNavigationItem;
@interface KSSigninViewController : UIViewController

    @property UIStoryboardPopoverSegue* popoverSegue;
    //@property KSGlobalNavigationItem* delegate;

- (IBAction)login:(id)sender;
- (IBAction)cancel:(id)sender;
@end
