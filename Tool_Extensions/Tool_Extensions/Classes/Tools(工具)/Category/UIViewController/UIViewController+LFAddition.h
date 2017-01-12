//
//  UIViewController+LFAddition.h
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (LFAddition)

/**
 在当前控制器添加子控制器，将子控制器的视图添加到 view 中

 @param childController 需要添加子控制器
 @param view 需要添加到视图
 */
- (void)lf_addChildController:(UIViewController *)childController
                     intoView:(UIView *)view;


@end
