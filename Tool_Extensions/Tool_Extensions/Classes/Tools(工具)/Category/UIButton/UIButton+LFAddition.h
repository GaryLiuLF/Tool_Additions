//
//  UIButton+LFAddition.h
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (LFAddition)

/**
 创建文本按钮

 @param title 标题文字
 @param fontSize 字体大小 默认是粗体
 @param normalColor 默认颜色
 @param highlightedColor 高亮颜色
 @param isRadius 是否需要圆角
 @return UIButton
 */
+ (instancetype)lf_textButton:(NSString *)title
                     fontSize:(CGFloat)fontSize
                  normalColor:(UIColor *)normalColor
             highlightedColor:(UIColor *)highlightedColor
                     isRadius:(BOOL) isRadius;

/**
 创建文本图片按钮

 @param title 标题文字
 @param fontSize 字体大小 默认是粗体
 @param normalColor 默认颜色
 @param highlightedColor 高亮的颜色
 @param bgImageName 背景图片 默认高亮图片命名后缀为 _highlighted
 @param isRadius 是否需要圆角
 @return UIButton
 */
+ (instancetype)lf_textImageOfButton:(NSString *)title
                            fontSize:(CGFloat)fontSize
                         normalColor:(UIColor *)normalColor
                    highlightedColor:(UIColor *)highlightedColor
                         bgImageName:(NSString *)bgImageName
                            isRadius:(BOOL) isRadius;

/**
 创建图像按钮

 @param imageName 图片名称
 @param bgImageName 背景图片名称
 @param isRadius 是否需要圆角
 @return UIButton
 */
+ (instancetype)lf_imageButton:(NSString *)imageName
                   bgImageName:(NSString *)bgImageName
                      isRadius:(BOOL) isRadius;

@end
