//
//  AppDelegate.m
//  testHuanxin
//
//  Created by WoodGao on 15/12/29.
//  Copyright © 2015年 wood. All rights reserved.
//

#import <EaseMob.h>
#import <EaseUI.h>
#import "AppDelegate.h"
#import "ChatViewListController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    //registerSDKWithAppKey:注册的appKey，详细见下面注释。
    //apnsCertName:推送证书名(不需要加后缀)，详细见下面注释。
    //[[EaseMob sharedInstance] registerSDKWithAppKey:@"douser#istore" apnsCertName:nil];
    //[[EaseMob sharedInstance] application:application didFinishLaunchingWithOptions:launchOptions];
    
    //登陆
    BOOL isAutoLogin = [[EaseMob sharedInstance].chatManager isAutoLoginEnabled];
    if (!isAutoLogin) {
        [[EaseMob sharedInstance].chatManager asyncLoginWithUsername:@"10001" password:@"1" completion:^(NSDictionary *loginInfo, EMError *error) {
            if (!error) {
                // 设置自动登录
                [[EaseMob sharedInstance].chatManager setIsAutoLoginEnabled:YES];
            }
        } onQueue:nil];
    }
    
    [[EaseSDKHelper shareHelper] easemobApplication:application
                      didFinishLaunchingWithOptions:launchOptions
                                             appkey:@"xxxxxx#xxx"
                                       apnsCertName:nil
                                        otherConfig:@{kSDKConfigEnableConsoleLogger:[NSNumber numberWithBool:YES]}];
    
    
    ChatViewListController *chatListVC = [[ChatViewListController alloc] init];
    
    UINavigationController *rootNaviController = [[UINavigationController alloc] initWithRootViewController:chatListVC];
    
    self.window.rootViewController = rootNaviController;
    [self.window makeKeyAndVisible];
    
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
