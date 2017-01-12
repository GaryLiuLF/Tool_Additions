//
//  NSDate+LFAddition.h
//  Tool_Extensions
//
//  Created by Apple on 17/1/11.
//  Copyright © 2017年 刘林飞 Gary随风. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (LFAddition)

/**
 获取当前日期
 
 @return dateStr
 */
+ (NSString *)lf_getCurrentDate;

/**
 获取昨天日期

 @return dateStr
 */
+ (NSString *)lf_getLastDayDate;

/**
 获取明天日期

 @return dateStr
 */
+ (NSString *)lf_getNextDayDate;

/**
 获取上周日期

 @return dateStr
 */
+ (NSString *)lf_getLastWeekDate;

/**
 获取下周日期

 @return dateStr
 */
+ (NSString *)lf_getNextWeekDate;

/**
 获取下月日期

 @return dateStr
 */
+ (NSString *)lf_getNextMonthDate;


@end
