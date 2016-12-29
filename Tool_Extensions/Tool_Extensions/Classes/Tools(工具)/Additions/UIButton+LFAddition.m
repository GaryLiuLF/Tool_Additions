//
//  UIButton+LFAddition.m
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import "UIButton+LFAddition.h"

@implementation UIButton (LFAddition)

// MARK: - 文本按钮
+ (instancetype)lf_textButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor highlightedColor:(UIColor *)highlightedColor {
    return [self lf_textImageOfButton:title fontSize:fontSize normalColor:normalColor highlightedColor:highlightedColor bgImageName:nil];
}

// MARK: - 文本图片按钮
+ (instancetype)lf_textImageOfButton:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor highlightedColor:(UIColor *)highlightedColor bgImageName:(NSString *)bgImageName {
    
    UIButton *btn = [[self alloc]init];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:normalColor forState:UIControlStateNormal];
    [btn setTitleColor:highlightedColor forState:UIControlStateHighlighted];
    btn.titleLabel.font = [UIFont boldSystemFontOfSize:fontSize];
    btn.layer.cornerRadius = 5.0f;
    btn.layer.masksToBounds = true;
    
    if (bgImageName != nil) {
        [btn setBackgroundImage:[UIImage imageNamed:bgImageName] forState:UIControlStateNormal];
        NSString *backgroundImageNameHL = [bgImageName stringByAppendingString:@"_highlighted"];
        [btn setBackgroundImage:[UIImage imageNamed:backgroundImageNameHL] forState:UIControlStateHighlighted];
    }
    [btn sizeToFit];
    
    return btn;
}

// MARK: - 图片按钮
// FIXME: 不能左右显示
+ (instancetype)lf_imageButton:(NSString *)imageName bgImageName:(NSString *)bgImageName {
    
    UIButton *btn = [[UIButton alloc]init];
    // 添加图片
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    NSString *imageHL = [imageName stringByAppendingString:@"_highlighted"];
    [btn setImage:[UIImage imageNamed:imageHL] forState:UIControlStateHighlighted];
    // 添加背景图片
    [btn setBackgroundImage:[UIImage imageNamed:bgImageName] forState:UIControlStateNormal];
    NSString *bgImageHL = [bgImageName stringByAppendingString:@"_highlighted"];
    [btn setBackgroundImage:[UIImage imageNamed:bgImageHL] forState:UIControlStateHighlighted];
    
    [btn sizeToFit];
    
    return btn;
}

@end
