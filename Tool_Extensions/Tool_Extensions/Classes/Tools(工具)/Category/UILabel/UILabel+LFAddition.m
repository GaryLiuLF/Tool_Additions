//
//  UILabel+LFAddition.m
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import "UILabel+LFAddition.h"

@implementation UILabel (LFAddition)

// MARK: - 创建文本标签
+ (instancetype)lf_lableViewText:(NSString *)text textColor:(UIColor *)textColor fontSize:(CGFloat)fontSize isBold:(BOOL)isBold
{
    UILabel *lab = [[UILabel alloc]init];
    lab.backgroundColor = [UIColor whiteColor];
    lab.text = text;
    lab.textColor = textColor;
    lab.numberOfLines = 0;
    if (isBold) {
        lab.font = [UIFont boldSystemFontOfSize:fontSize];
    }
    else {
        lab.font = [UIFont systemFontOfSize:fontSize];
    }
    
    // 后续若改变了 lab 内容，需要再 sizeToFit ，lab 才可以变成最新的 size
    [lab sizeToFit];
    
    return lab;
}

// MARK: - 固定高度，获取宽度
- (CGFloat)lf_getTextWidth {
    CGSize newSize = [self.text boundingRectWithSize:CGSizeMake(MAXFLOAT, self.frame.size.height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : self.font} context:nil].size;
    return newSize.width;
}

// MARK: - 固定宽度，获取宽度
- (CGFloat)lf_getTextHeight {
    CGSize newSize = [self.text boundingRectWithSize:CGSizeMake(self.frame.size.width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : self.font} context:nil].size;
    return newSize.height;
}

@end
