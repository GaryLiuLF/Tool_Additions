//
//  UIViewController+LFAddition.m
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import "UIViewController+LFAddition.h"

@implementation UIViewController (LFAddition)

- (void)lf_addChildController:(UIViewController *)childController intoView:(UIView *)view
{
    [self addChildViewController:childController];
    [view addSubview:childController.view];
    [childController didMoveToParentViewController:self];
}

@end
