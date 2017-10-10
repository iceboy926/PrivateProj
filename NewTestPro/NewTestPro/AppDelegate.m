//
//  AppDelegate.m
//  NewTestPro
//
//  Created by zuoyongyong on 2017/9/4.
//  Copyright © 2017年 zuoyongyong. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

int fcp_trim_int_64(char fcpId[32], uint64_t *pInt64)
{
    uint64_t result64 = 0;
    if (pInt64 == NULL)
    {
        return 1;
    }
    *pInt64 = 0;
    for(int i = 0; i<8; i++)
    {
        result64 = (result64 << 8) | ((uint64_t) fcpId[i]);
    }
    *pInt64 = result64;
    return 0;
}

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    char newfcp[32] = {0x01, 0x02, 0x03, 0x04, 0x05,0x06, 0x07, 0x08};
    
    uint64_t pNewout = 0;
    
    fcp_trim_int_64(newfcp, &pNewout);
    
    NSLog(@"out data is 0x%x", pNewout);
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
