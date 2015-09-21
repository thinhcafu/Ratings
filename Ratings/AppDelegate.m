//
//  AppDelegate.m
//  Ratings
//
//  Created by ECEP2010 on 9/18/15.
//  Copyright (c) 2015 ECEP. All rights reserved.
//

#import "AppDelegate.h"
#import "Players.h"
#import "PlayersViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate
{
    NSMutableArray *_arrPlayers;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    _arrPlayers = [NSMutableArray arrayWithCapacity:20];
    
    // create instance object of Players
    Players *iPlayers = [[Players alloc] init];
    
    // Ob1
    iPlayers.name = @"Phan Thinh";
    iPlayers.game = @"League of legends";
    iPlayers.rating = 5 ;
    [_arrPlayers addObject:iPlayers]; // add into  array _arrPlayers.
    
    //Ob2
    iPlayers = [[Players alloc] init];
    iPlayers.name = @"Phan Tin";
    iPlayers.game = @"Fifa Online 3";
    iPlayers.rating = 3 ;
    [_arrPlayers addObject:iPlayers]; // add into  array _arrPlayers.
    
    //Ob3
    iPlayers = [[Players alloc] init];
    iPlayers.name = @"Nguyen Hai";
    iPlayers.game = @"Gunny";
    iPlayers.rating = 5 ;
    [_arrPlayers addObject:iPlayers]; // add into  array _arrPlayers.
    
    //Ob4
    iPlayers = [[Players alloc] init];
    iPlayers.name = @"Le Ba";
    iPlayers.game = @"WarCraft";
    iPlayers.rating = 2 ;
    [_arrPlayers addObject:iPlayers]; // add into  array _arrPlayers.
    
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController; //
    UINavigationController *navigationController = [tabBarController viewControllers][0];
    PlayersViewController *playersViewController = [navigationController viewControllers][0];
    playersViewController.arrPlayers = _arrPlayers;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
