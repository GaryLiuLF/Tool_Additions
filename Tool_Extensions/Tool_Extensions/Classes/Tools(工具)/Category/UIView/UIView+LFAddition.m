//
//  UIView+LFAddition.m
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import "UIView+LFAddition.h"
#import <objc/runtime.h>

@implementation UIView (LFAddition)

- (CGFloat)x {
    return self.frame.origin.x;
}

- (void)setX:(CGFloat)x {
    CGRect rect = self.frame;
    rect.origin.x = x;
    self.frame = rect;
}

- (CGFloat)y {
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y {
    CGRect rect = self.frame;
    rect.origin.y = y;
    self.frame = rect;
}

- (CGFloat)centerX {
    return self.center.x;
}

-(void)setCenterX:(CGFloat)centerX {
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect rect = self.frame;
    rect.size.width = width;
    self.frame = rect;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect rect = self.frame;
    rect.size.height = height;
    self.frame = rect;
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    CGRect rect = self.frame;
    rect.size = size;
    self.frame = rect;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom {
}

- (CGFloat)right {
    return  self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right {
}

// MARK: - 获取当前 view 所在的控制器
- (UIViewController *)lf_getCurrentViewController {
    for (UIView *next = [self superview]; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UINavigationController class]] ||
            [nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}

// MARK: - 视图截图
- (UIImage *)lf_snapshotImage {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, true, 0);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:true];
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return result;
}



@end
