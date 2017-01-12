//
//  UIColor+LFAddition.m
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import "UIColor+LFAddition.h"

@implementation UIColor (LFAddition)

// MARK: - 生成随机颜色
+ (instancetype)lf_randomColor {
    return [UIColor lf_colorWithRed:arc4random_uniform(256) green:arc4random_uniform(256) blue:arc4random_uniform(arc4random_uniform(256)) alpha:1];
}

// MARK: - 16 进制颜色
+ (instancetype)lf_colorWithHex:(uint32_t)hex {
    uint8_t r = (hex & 0xFF0000) >> 16;
    uint8_t g = (hex & 0x00FF00) >> 8;
    uint8_t b = (hex & 0x0000FF);
    
    return [UIColor lf_colorWithRed:r green:g blue:b alpha:1];
}

// MARK: - RGBA 颜色
+ (instancetype)lf_colorWithRed:(u_int8_t)red green:(u_int8_t)green blue:(u_int8_t)blue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:red / 255.0 green:green/ 255.0 blue:blue/ 255.0 alpha:alpha];
}

@end
