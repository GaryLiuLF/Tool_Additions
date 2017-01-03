//
//  LFAdditions.h
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/28.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//


// MARK: - 头文件
#import "NSAttributedString+LFAddition.h"
#import "UIColor+LFAddition.h"
#import "UILabel+LFAddition.h"
#import "UIScreen+LFAddition.h"
#import "NSObject+LFAddition.h"
#import "NSBundle+LFAddition.h"
#import "UIButton+LFAddition.h"
#import "NSString+LFAddition.h"
#import "UIViewController+LFAddition.h"
#import "UIApplication+LFAddition.h"
#import "UIImageView+LFAddition.h"
#import "UIDevice+LFAddition.h"

// MARK: - 屏幕尺寸
#define Screen_width        [UIScreen mainScreen].bounds.size.width
#define Screen_height       [UIScreen mainScreen].bounds.size.height
// MARK: - 弱应用
#define WS(weakSelf)        __weak __typeof(&*self)weakSelf = self
// MARK: - 宽高比例适配 以 iPhone6 为基准
#define Scale(length)       ((length) * Screen_width / 375)
// MARK: - 字体大小比例适配 以 iPhone6 的字体大小为基准
// 默认字体为 14，其中 plus（大屏幕）则加1, 5s（小屏幕）则减.5
#define IsSmallScreen           [UIScreen lf_isSmallOfScreen]
#define IsBigScreen             [UIScreen lf_isBigOfScreen]

#define ScaleFont(fontSize)     (fontSize + (IsSmallScreen ? -0.5 : 0) + (IsBigScreen ? 1 : 0))
