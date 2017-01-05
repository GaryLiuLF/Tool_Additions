//
//  NSString+LFAddition.h
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import <Foundation/Foundation.h>

/// 路径类型
typedef NS_ENUM(NSInteger, DirType) {
    DocumentDirTpey = 1,
    CacheDirType,
    TempDirType,
};

@interface NSString (LFAddition)


// MARK:- String
/**
 生成类型文本 默认是 类型:文本

 @param type 类型
 @param content 文本
 @return NSSting
 */
+ (instancetype)lf_showContentByType:(NSString *)type
                          content:(NSString *)content;

/**
 拼接字符串

 @param subString 子字符串
 @param isBlank 中间是否为空
 @return String
 */
- (instancetype)lf_addString:(NSString *)subString
                  isBlank:(BOOL)isBlank;


// MARK: - Path
/**
 给 Document 当前路径追加子路径

 @param type 路径类型
 @param subPath 追加的子路径
 */
+ (NSString *)lf_appendDirWithDirType:(DirType)type
                                 subPath:(NSString *)subPath;


@end
