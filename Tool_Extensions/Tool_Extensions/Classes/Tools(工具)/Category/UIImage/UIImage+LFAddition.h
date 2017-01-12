//
//  UIImage+LFAddition.h
//  Tool_Extensions
//
//  Created by Apple on 17/1/11.
//  Copyright © 2017年 刘林飞 Gary随风. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LFAddition)


/**
 图片添加模糊效果（在Retina设备上显示高清）
 
 @param blur 模糊系数
 @return 模糊图片
 */
- (UIImage *)lf_coreImageBlurNumber:(CGFloat)blur;

/**
 图片添加模糊效果（在Retina设备上显示很模糊）

 @param blur 模糊系数
 @return 模糊图片
 */
- (UIImage *)lf_boxblurWithBlurNumber:(CGFloat)blur;

/**
 使用颜色生成指定大小的图片
 
 @param color 图片颜色
 @param size 图片大小
 @return 图片
 */
+ (UIImage *)lf_imageWithColor:(UIColor *)color size:(CGSize)size;

/**
 压缩图片到指点大小 kb

 @param image 压缩图片
 @param kb 图片大小
 @return 压缩后的图片
 */
+ (UIImage *)lf_scaleImage:(UIImage *)image toKB:(NSInteger)kb;


@end
