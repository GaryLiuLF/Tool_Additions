//
//  UIView+LFAddition.h
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LFAddition)

/// 取得 view 宽/高
- (CGFloat)width;
- (CGFloat)height;
/// 取得 view 的 上/左/下/右 偏移
- (CGFloat)top;
- (CGFloat)left;
- (CGFloat)bottom;
- (CGFloat)right;
/// 取得 view 的中心 x/y 坐标
- (CGFloat)centerX;
- (CGFloat)centerY;

/// 设置 view 宽/高/x/y
- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;
- (void)setX:(CGFloat)x;
- (void)setY:(CGFloat)y;
/// 设置 view x/y 居中
- (void)setCenterX;
- (void)setCenterY;
/// 设置 view 大小
- (void)setSize:(CGSize)size;

/// 设置远点在父视图的偏移
- (void)setOrigin:(CGPoint)origin;


/**
 返回视图截图
 
 @return 截图
 */
- (UIImage *)lf_snapshotImage;

@end
