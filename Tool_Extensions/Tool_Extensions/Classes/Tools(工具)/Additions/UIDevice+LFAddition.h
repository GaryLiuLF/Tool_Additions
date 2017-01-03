//
//  UIDevice+LFAddition.h
//  Tool_Extensions
//
//  Created by Apple on 17/1/3.
//  Copyright © 2017年 刘林飞 Gary随风. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (LFAddition)

/**
 获取设备类型

 @return iphoneType
 */
+ (NSString *)lf_getIphoneType;

/**
 是否为小屏幕 iphone5s 以下尺寸

 @return Bool
 */
+ (BOOL)lf_isSmallOfScreen;

/**
 是否为大屏幕 plus 尺寸

 @return Bool
 */
+ (BOOL)lf_isBigOfScreen;

@end
