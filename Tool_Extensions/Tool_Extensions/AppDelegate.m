//
//  AppDelegate.m
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/28.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    id vc = [[NSClassFromString(@"DemoViewController") alloc]init];
    self.window.rootViewController = (UIViewController *)vc;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
