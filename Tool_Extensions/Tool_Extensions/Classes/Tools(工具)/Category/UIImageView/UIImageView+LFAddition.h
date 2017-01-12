//
//  UIImageView+LFAddition.h
//  Tool_Extensions
//
//  Created by Apple on 17/1/3.
//  Copyright © 2017年 刘林飞 Gary随风. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (LFAddition)

/**
 使用图像名称创建图像视图
 
 @param imageName 图像名称
 @return imageView
 */
+ (instancetype)lf_imageViewWithImageName:(NSString *)imageName;

@end
