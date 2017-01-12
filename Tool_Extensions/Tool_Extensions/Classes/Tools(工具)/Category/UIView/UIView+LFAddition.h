//
//  UIView+LFAddition.h
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LFAddition)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize  size;
@property (nonatomic, assign) CGFloat bottom;
@property (nonatomic, assign) CGFloat right;

/**
 返回视图截图
 
 @return 截图
 */
- (UIImage *)lf_snapshotImage;

/**
 获取当前view所在的控制器

 @return 所在控制器
 */
- (UIViewController*)lf_getCurrentViewController;



@end
