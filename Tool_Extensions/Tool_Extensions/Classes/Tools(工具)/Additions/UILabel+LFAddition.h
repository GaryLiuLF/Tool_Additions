//
//  UILabel+LFAddition.h
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (LFAddition)

/**
 创建文本标签

 @param text 文本
 @param textColor 字体颜色
 @param fontSize 字体大小
 @param isBold 是否粗体
 @return UILabel实例
 */
+ (instancetype)lf_lableViewText:(NSString *)text
                       textColor:(UIColor *)textColor
                        fontSize:(CGFloat)fontSize
                          isBold:(BOOL)isBold;

@end
