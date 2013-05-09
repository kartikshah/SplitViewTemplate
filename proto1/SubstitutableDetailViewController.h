//
//  SubstitutableDetailViewController.h
//  proto1
//
//  Created by Kartik Shah on 5/7/13.
//  Copyright (c) 2013 Kartik Shah. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SubstitutableDetailViewController <NSObject>

- (void)showRootPopoverButtonItem:(UIBarButtonItem *)barButtonItem;
- (void)invalidateRootPopoverButtonItem:(UIBarButtonItem *)barButtonItem;

@end
