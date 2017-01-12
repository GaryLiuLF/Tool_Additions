//
//  UIScreen+LFAddition.h
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (LFAddition)


/**
 屏幕宽度

 @return 宽度
 */
+ (CGFloat)lf_screenWidth;

/**
 屏幕高度

 @return 高度
 */
+ (CGFloat)lf_screenHeight;

/**
 屏幕倍率

 @return 倍率
 */
+ (CGFloat)lf_scale;


@end
