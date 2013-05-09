    //
//  KSAppDelegate.m
//  proto1
//
//  Created by Kartik Shah on 11/8/12.
//  Copyright (c) 2012 Kartik Shah. All rights reserved.
//

#import "KSAppDelegate.h"
#import "KSMasterViewController.h"

@implementation KSAppDelegate

@synthesize ksSplitViewDetailDelegate = _ksSplitViewDetailDelegate;
@synthesize currentDetailController = _currentDetailController;


- (void)commonLaunchInitialization: (NSDictionary *)launchOptions 
{
    // Override point for customization after application launch.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        
        UISplitViewController *splitViewController = (UISplitViewController *)self.window.rootViewController;
        
        KSMasterViewController *ksMasterViewController = (KSMasterViewController *) [[splitViewController.viewControllers objectAtIndex:0] topViewController];
        ksMasterViewController.splitViewController = splitViewController;


        //TODO - Move this inside Delegate
        if(!_currentDetailController)
        {
            _currentDetailController = (UINavigationController*)[splitViewController.storyboard instantiateViewControllerWithIdentifier:@"HOME"];
        }
        
        _ksSplitViewDetailDelegate = [[KSSplitViewDetailDelegate alloc] initWithSplitViewController:splitViewController AndViewControllers: [NSArray arrayWithObjects:ksMasterViewController.navigationController, _currentDetailController, nil]];

        splitViewController.delegate = _ksSplitViewDetailDelegate;
        ksMasterViewController.ksSplitViewDetailDelegate = _ksSplitViewDetailDelegate;
        
    }
}

-(BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self commonLaunchInitialization:launchOptions];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (BOOL)splitViewController:(UISplitViewController *)svc shouldHideViewController:(UIViewController *)vc inOrientation:(UIInterfaceOrientation)orientation
{
    return YES;
}

-(BOOL) application:(UIApplication *)application shouldSaveApplicationState:(NSCoder *)coder
{
    return YES;
}

- (BOOL) application:(UIApplication *)application shouldRestoreApplicationState:(NSCoder *)coder
{
    return YES;
}


- (void) application:(UIApplication *)application willEncodeRestorableStateWithCoder:(NSCoder *)coder
{
 // Save anything relevant for our role as the TableView's DataSource
 [coder encodeObject:_currentDetailController forKey:@"Objects"];
 NSLog(@"CurrentDetailController %@", [_currentDetailController restorationIdentifier]);

}


- (void)application:(UIApplication *)application didDecodeRestorableStateWithCoder:(NSCoder *)coder
{
    _currentDetailController = [coder decodeObjectForKey:@"Objects"];
    NSLog(@"CurrentDetailController: %@", [_currentDetailController restorationIdentifier]);
    
}
@end
