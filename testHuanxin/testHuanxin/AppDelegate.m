//
//  AppDelegate.m
//  testHuanxin
//
//  Created by WoodGao on 15/12/29.
//  Copyright © 2015年 wood. All rights reserved.
//

#import <EaseMob.h>
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //registerSDKWithAppKey:注册的appKey，详细见下面注释。
    //apnsCertName:推送证书名(不需要加后缀)，详细见下面注释。
    [[EaseMob sharedInstance] registerSDKWithAppKey:@"douser#istore" apnsCertName:nil];
    [[EaseMob sharedInstance] application:application didFinishLaunchingWithOptions:launchOptions];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[EaseMob sharedInstance] applicationDidEnterBackground:application];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    [[EaseMob sharedInstance] applicationWillEnterForeground:application];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
    [[EaseMob sharedInstance] applicationWillTerminate:application];
}

@end
