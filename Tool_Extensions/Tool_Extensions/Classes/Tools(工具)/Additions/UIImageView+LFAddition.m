//
//  UIImageView+LFAddition.m
//  Tool_Extensions
//
//  Created by Apple on 17/1/3.
//  Copyright © 2017年 刘林飞 Gary随风. All rights reserved.
//

#import "UIImageView+LFAddition.h"

@implementation UIImageView (LFAddition)

// MARK: - 使用图像名称创建图像视图
+ (instancetype)lf_imageViewWithImageName:(NSString *)imageName {
    
    UIImage *image = [UIImage imageNamed:imageName];
    UIImage *imageHH = [UIImage imageNamed:[imageName stringByAppendingString:@"_highlighted"]];
    
    return [[UIImageView alloc]initWithImage:image highlightedImage:imageHH];
}

@end
