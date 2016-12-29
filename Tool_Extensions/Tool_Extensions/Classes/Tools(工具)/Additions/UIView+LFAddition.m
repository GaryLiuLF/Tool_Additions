//
//  UIView+LFAddition.m
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import "UIView+LFAddition.h"

@implementation UIView (LFAddition)

// MARK: - 取得 view 宽/高
- (CGFloat)width {
    return self.frame.size.width;
}
- (CGFloat)height {
    return self.frame.size.height;
}

// MARK: - 取得 view 的 上/左/下/右 偏移
- (CGFloat)top {
    return CGRectGetMinY(self.frame);
}
- (CGFloat)left {
    return CGRectGetMinX(self.frame);
}
- (CGFloat)bottom {
    return CGRectGetMaxY(self.frame);
}
- (CGFloat)right {
    return CGRectGetMaxX(self.frame);
}

// MARK: - 取得 view 的中心 x/y 坐标
- (CGFloat)centerX {
    return self.center.x;
}
- (CGFloat)centerY {
    return self.center.y;
}

// MARK: - 设置 view 宽/高/x/y
- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}
- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}
- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}
- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

// MARK: - 设置 view x/y 居中
- (void)setCenterX {
    CGRect frame = self.frame;
    frame.origin.x = [UIScreen mainScreen].bounds.size.width / 2 - self.width / 2;
    self.frame = frame;
}
- (void)setCenterY {
    CGRect frame = self.frame;
    frame.origin.y = [UIScreen mainScreen].bounds.size.height / 2 - self.height / 2;
    self.frame = frame;
}

// MARK: - 设置 view 居中
- (void)setCenter {
    CGRect frame = self.frame;
    frame.origin.x = [UIScreen mainScreen].bounds.size.width / 2 - self.width / 2;
    frame.origin.y = [UIScreen mainScreen].bounds.size.height / 2 - self.height / 2;
    self.frame = frame;
}

// MARK: - 设置 Origin
- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

// MARK: - 设置 size
- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

// MARK: - 设置远点在父视图的偏移
- (UIImage *)lf_snapshotImage {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, true, 0);
    
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:true];
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return result;
}

@end

