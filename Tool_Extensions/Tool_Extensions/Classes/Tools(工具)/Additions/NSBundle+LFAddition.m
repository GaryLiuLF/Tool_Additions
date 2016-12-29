//
//  NSBundle+LFAddition.m
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import "NSBundle+LFAddition.h"

@implementation NSBundle (LFAddition)

// MARK: - 获取 UUID
+ (NSString *)getUUID {
    return [NSUUID UUID].UUIDString;
}

// MARK: - 获取命名空间
+ (NSString *)getNamespace {
    return [NSBundle mainBundle].infoDictionary[@"CFBundleName"];
}

@end
