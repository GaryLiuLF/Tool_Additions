//
//  UITextView+LFAddition.m
//  Tool_Extensions
//
//  Created by Apple on 17/1/11.
//  Copyright © 2017年 刘林飞 Gary随风. All rights reserved.
//

#import "UITextView+LFAddition.h"

@implementation UITextView (LFAddition)

// MARK: - 获取 UITextView 的高度
- (CGFloat)lf_getTextViewHeight {
    CGSize newSize = [self.text boundingRectWithSize:CGSizeMake(self.frame.size.width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : self.font} context:nil].size;
    return newSize.height;
}


@end
