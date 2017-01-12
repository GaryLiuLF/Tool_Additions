//
//  UIApplication+LFAddition.h
//  Tool_Extensions
//
//  Created by Apple on 17/1/3.
//  Copyright © 2017年 刘林飞 Gary随风. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface UIApplication (LFAddition)

/**
 返回应用程序代理

 @return delegate
 */
+ (AppDelegate *)lf_appDelegate;

/**
 返回根视图控制器

 @return rootViewController
 */
+ (UIViewController *)lf_rootViewController;

/**
 返回当前设备对应的启动图片

 @return launchImage
 */
+ (UIImage *)lf_launchImage;

@end
