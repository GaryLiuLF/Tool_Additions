//
//  NSDate+LFAddition.m
//  Tool_Extensions
//
//  Created by Apple on 17/1/11.
//  Copyright © 2017年 刘林飞 Gary随风. All rights reserved.
//

#import "NSDate+LFAddition.h"

@implementation NSDate (LFAddition)

// MARK: - 获取当前日期
+ (NSString *)lf_getCurrentDate {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateTime = [formatter stringFromDate:[NSDate date]];
    return dateTime;
}
// MARK: - 获取昨天日期
+ (NSString *)lf_getLastDayDate {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateTime = [formatter stringFromDate:[NSDate dateWithTimeIntervalSinceNow:-60 * 60 * 24]];
    return dateTime;
}
// MARK: - 获取明天日期
+ (NSString *)lf_getNextDayDate {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateTime = [formatter stringFromDate:[NSDate dateWithTimeIntervalSinceNow:60 * 60 * 24]];
    return dateTime;
}
// MARK: - 获取上周日期
+ (NSString *)lf_getLastWeekDate {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateTime = [formatter stringFromDate:[NSDate dateWithTimeIntervalSinceNow:-60 * 60 * 24 * 7]];
    return dateTime;
}
// MARK: - 获取下周日期
+ (NSString *)lf_getNextWeekDate {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateTime = [formatter stringFromDate:[NSDate dateWithTimeIntervalSinceNow:60 * 60 * 24 * 7]];
    return dateTime;
}
// MARK: - 获取下月日期
+ (NSString *)lf_getNextMonthDate {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateTime = [formatter stringFromDate:[NSDate dateWithTimeIntervalSinceNow:60 * 60 * 24 * 30]];
    return dateTime;
}

@end
