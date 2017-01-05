//
//  NSString+LFAddition.m
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/29.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import "NSString+LFAddition.h"

@implementation NSString (LFAddition)

// MARK: - 生成类型文本
+ (instancetype)lf_showContentByType:(NSString *)type content:(NSString *)content {
    return [NSString stringWithFormat:@"%@:%@", type, content];
}

// MARK: - 拼接字符串
- (instancetype)lf_addString:(NSString *)subString isBlank:(BOOL)isBlank {
    if (isBlank) {
        return [NSString stringWithFormat:@"%@ %@", self, subString];
    }
    return [self stringByAppendingString:subString];
}
    
// MARK: - 给 Document 路径追加子路径
+ (NSString *)lf_appendDirWithDirType:(DirType)type subPath:(NSString *)subPath {
    
    NSString *path;
    switch (type) {
        case DocumentDirTpey:
            path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true).lastObject;
            break;
        case CacheDirType:
            path = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, true).lastObject;
            break;
        case TempDirType:
            path = NSTemporaryDirectory();
            break;
        default:
            break;
    }
    
    return [path stringByAppendingPathComponent:subPath];
}

@end
