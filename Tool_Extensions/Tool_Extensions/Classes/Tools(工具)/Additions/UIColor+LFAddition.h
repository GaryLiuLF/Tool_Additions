//
//  UIColor+LFAddition.h
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (LFAddition)

/**
 生成随机颜色
 
 @return 颜色
 */
+ (instancetype)lf_randomColor;

/**
 使用 16 进制数字创建颜色，例如 0xF2F2F2

 @param hex 16 进制无符号 32 位整数
 @return 颜色
 */
+ (instancetype)lf_colorWithHex:(uint32_t)hex;


/**
 使用 R / G / B / a 数值创建颜色

 @param red red
 @param green green
 @param blue blue
 @param alpha 透明度
 @return 颜色
 */
+ (instancetype)lf_colorWithRed:(u_int8_t)red
                          green:(u_int8_t)green
                           blue:(u_int8_t)blue
                          alpha:(CGFloat)alpha;

@end
