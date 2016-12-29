//
//  NSAttributedString+LFAddition.m
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import "NSAttributedString+LFAddition.h"

@implementation NSAttributedString (LFAddition)

+ (instancetype)lf_imageTextWithImage:(UIImage *)image imageWH:(CGFloat)imageWH title:(NSString *)title fontSize:(CGFloat)fontSize titleColor:(UIColor *)titleColor spacing:(CGFloat)spacing
{
    // 1. 图片文本
    NSTextAttachment *attachment = [[NSTextAttachment alloc]init];
    attachment.image = image;
    attachment.bounds = CGRectMake(0, 0, imageWH, imageWH);
    NSAttributedString *imageText = [NSAttributedString attributedStringWithAttachment:attachment];
    
    // 2. 标题文字
    NSDictionary *titleDict = @{NSForegroundColorAttributeName : titleColor,
                                NSFontAttributeName : [UIFont systemFontOfSize:fontSize]};
    NSAttributedString *text = [[NSAttributedString alloc]initWithString:title attributes:titleDict];
    
    // 3. 间距
    NSDictionary *spacingDict = @{NSFontAttributeName : [UIFont systemFontOfSize:spacing]};
    NSAttributedString *lineText = [[NSAttributedString alloc]initWithString:@"\n\n" attributes:spacingDict];
    
    // 合并文本
    NSMutableAttributedString *attrM = [[NSMutableAttributedString alloc]init];
    [attrM appendAttributedString:imageText];
    [attrM appendAttributedString:lineText];
    [attrM appendAttributedString:text];
    
    return attrM.copy;
}

@end
