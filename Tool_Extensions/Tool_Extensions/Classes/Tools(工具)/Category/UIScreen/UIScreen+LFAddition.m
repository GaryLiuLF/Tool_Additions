//
//  UIScreen+LFAddition.m
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import "UIScreen+LFAddition.h"

@implementation UIScreen (LFAddition)

// MARK: - 屏幕宽度
+ (CGFloat)lf_screenWidth {
    return [UIScreen mainScreen].bounds.size.width;
}

// MARK: - 屏幕高度
+ (CGFloat)lf_screenHeight {
    return [UIScreen mainScreen].bounds.size.height;
}

// MARK: - 屏幕倍率
+ (CGFloat)lf_scale {
    return [UIScreen mainScreen].scale;
}

@end
