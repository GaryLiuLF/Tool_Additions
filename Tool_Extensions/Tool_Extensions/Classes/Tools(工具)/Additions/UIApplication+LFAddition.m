//
//  UIApplication+LFAddition.m
//  Tool_Extensions
//
//  Created by Apple on 17/1/3.
//  Copyright © 2017年 刘林飞 Gary随风. All rights reserved.
//

#import "UIApplication+LFAddition.h"

@implementation UIApplication (LFAddition)

// MARK: - 返回应用程序代理
+ (AppDelegate *)lf_appDelegate {
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}

// MARK: - 返回根视图控制器
+ (UIViewController *)lf_rootViewController {
    return [UIApplication lf_appDelegate].window.rootViewController;
}

// MARK: - 返回当前设备对应的启动图片
+ (UIImage *)lf_launchImage {
    UIImage *image = nil;
    NSArray *launchImages = [NSBundle mainBundle].infoDictionary[@"UILaunchImages"];
    
    for (NSDictionary *dict in launchImages) {
        // 1. 将字符串转换成尺寸
        CGSize size = CGSizeFromString(dict[@"UILaunchImageSize"]);
        // 2. 与当前屏幕比较
        if (CGSizeEqualToSize(size, [UIScreen mainScreen].bounds.size)) {
            NSString *filename = dict[@"UILaunchImageName"];
            image = [UIImage imageNamed:filename];
            
            break;
        }
    }
    
    return image;
}


@end
