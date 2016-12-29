//
//  NSBundle+LFAddition.h
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (LFAddition)

/**
 获取 UUID

 @return UUID
 */
+ (NSString *)getUUID;

/**
 获取命名空间

 @return 命名空间
 */
+ (NSString *)getNamespace;

@end
