//
//  NSObject+LFAddition.h
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (LFAddition)

// MARK: - 字符串
/**
 判断是否为空

 @param object 判断对象
 @return true 为空， false 不为空
 */
+ (BOOL)isEmpty:(id)object;


// MARK: - UserDefaults 存取数据
/**
 通过 key 把当前数据 self 保存到 UserDEfaults
 NSUserDefaults只支持： NSString, NSNumber, NSDate, NSArray, NSDictionary.
 @param key 关键字
 */
- (void)saveToUserDefaultsWithKey:(id)key;

/**
 通过 key 从 UserDefaults 获取数据

 @param key 关键字
 @return 获取的数据
 */
+ (id)getFromUserDefaultsWithKey:(id)key;


@end
