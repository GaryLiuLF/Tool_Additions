//
//  NSObject+LFAddition.m
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import "NSObject+LFAddition.h"

@implementation NSObject (LFAddition)

// MARK: - 判断是否为空
+ (BOOL)isEmpty:(id)object {
  
    BOOL isEmpty = false;
    
    if (object == nil ||
        [object isKindOfClass:[NSNull class]] ||
        ([object isKindOfClass:[NSString class]] && [(NSString*)object length] == 0) ||
        ([object isKindOfClass:[NSArray class]] && [(NSArray*)object count] == 0) ||
        ([object isKindOfClass:[NSDictionary class]] && [(NSDictionary*)object count] == 0)) {
        isEmpty = true;
    }
         
     return isEmpty;
}

// MARK: - UserDefaults 存取数据
- (void)saveToUserDefaultsWithKey:(id)key {
    [[NSUserDefaults standardUserDefaults]setObject:self forKey:key];
}

+ (id)getFromUserDefaultsWithKey:(id)key {
    return [[NSUserDefaults standardUserDefaults]objectForKey:key];
}

@end
