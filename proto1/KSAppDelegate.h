//
//  KSAppDelegate.h
//  proto1
//
//  Created by Kartik Shah on 11/8/12.
//  Copyright (c) 2012 Kartik Shah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KSSplitViewDetailDelegate.h"

@interface KSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController* currentDetailController;
@property (strong, nonatomic) KSSplitViewDetailDelegate *ksSplitViewDetailDelegate;

@end
