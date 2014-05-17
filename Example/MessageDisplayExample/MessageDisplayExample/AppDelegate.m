//
//  AppDelegate.m
//  MessageDisplayExample
//
//  Created by qtone-1 on 14-4-24.
//  Copyright (c) 2014年 曾宪华 开发团队(http://iyilunba.com ) 本人QQ:543413507 本人QQ群（142557668）. All rights reserved.
//

#import "AppDelegate.h"
#import "XHBaseTabBarController.h"
#import "XHBaseNavigationController.h"

#import "XHMessageRootViewController.h"
#import "XHContactTableViewController.h"
#import "XHDiscoverTableViewController.h"
#import "XHProfileTableViewController.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    XHMessageRootViewController *messageRootViewController = [[XHMessageRootViewController alloc] init];
    messageRootViewController.tabBarItem.image = [UIImage imageNamed:@"WeChat"];
    XHBaseNavigationController *messageNavigationController = [[XHBaseNavigationController alloc] initWithRootViewController:messageRootViewController];
    
    XHContactTableViewController *contactTableViewController = [[XHContactTableViewController alloc] init];
    contactTableViewController.title = NSLocalizedString(@"Contact", @"联系人");
    contactTableViewController.tabBarItem.image = [UIImage imageNamed:@"Contact"];
    XHBaseNavigationController *contactNavigationController = [[XHBaseNavigationController alloc] initWithRootViewController:contactTableViewController];
    
    XHDiscoverTableViewController *discoverTableViewController = [[XHDiscoverTableViewController alloc] init];
    discoverTableViewController.title = NSLocalizedString(@"News", @"发现");
    discoverTableViewController.tabBarItem.image = [UIImage imageNamed:@"SNS"];
    XHBaseNavigationController *discoverNavigationController = [[XHBaseNavigationController alloc] initWithRootViewController:discoverTableViewController];
    
    XHProfileTableViewController *profileTableViewController = [[XHProfileTableViewController alloc] init];
    profileTableViewController.title = NSLocalizedString(@"Profile", @"个人信息");
    profileTableViewController.tabBarItem.image = [UIImage imageNamed:@"Profile"];
    XHBaseNavigationController *profileNavigationController = [[XHBaseNavigationController alloc] initWithRootViewController:profileTableViewController];
    
    XHBaseTabBarController *rootTabBarController = [[XHBaseTabBarController alloc] init];
    rootTabBarController.viewControllers = [NSArray arrayWithObjects:messageNavigationController, contactNavigationController, discoverNavigationController, profileNavigationController, nil];
    [rootTabBarController.tabBar setBackgroundImage:[UIImage imageNamed:@"tabbarBkg"]];
    
    self.window.rootViewController = rootTabBarController;
    
    [self.window makeKeyAndVisible];
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

@end
