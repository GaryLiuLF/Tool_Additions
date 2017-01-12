//
//  NSAttributedString+LFAddition.h
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSAttributedString (LFAddition)

/**
 使用图片和文本生成上下排列的图文混排
 
 @param image       图片
 @param imageWH     图片宽高（等宽高）
 @param title       标题文字
 @param fontSize    标题文字的大小
 @param titleColor  标题文字的颜色
 @param spacing     图片与标题的间距
 @return 属性文本
 */
+ (instancetype)lf_imageTextWithImage:(UIImage *)image
                              imageWH:(CGFloat)imageWH
                                title:(NSString *)title
                             fontSize:(CGFloat)fontSize
                           titleColor:(UIColor *)titleColor
                              spacing:(CGFloat)spacing;



@end
