//
//  DemoViewController.m
//  Tool_Extensions
//
//  Created by gary.liu on 16/12/28.
//  Copyright © 2016年 刘林飞 Gary随风. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self getIphoneTypeInfo];
}

// MARK: - 打印 NSArray & NSDictionary 的内容
- (void)showArrayOrDictionaryContent{
    NSArray *array = @[@"1", @"2", @"3"];
    
    NSDictionary *dict = @{@"1" : @"one",
                           @"2" : @"two",
                           @"3" : @"three"};
    
    NSLog(@"array = %@",[array descriptionWithLocale:nil]);
    
    NSLog(@"dict = %@",[dict descriptionWithLocale:nil]);
}

// MARK: - 显示富文本的图文混排
- (void)showAttrText {
    UITextView *tf = [[UITextView alloc]initWithFrame:CGRectMake(0, 0, 200, 300)];
    tf.center = self.view.center;
    [self.view addSubview:tf];
    
    NSAttributedString *attr = [NSAttributedString lf_imageTextWithImage:[UIImage imageNamed:@"image1"]
                                                                 imageWH:100 title:@"这是图标ipad尺寸这是图标尺寸"
                                                                fontSize:14
                                                              titleColor:[UIColor darkGrayColor]
                                                                 spacing:4];
    [tf setAttributedText:attr];
}

// MARK: - 显示颜色
- (void)showColor {
    UILabel *lab = [[UILabel alloc]init];
    lab.backgroundColor = [UIColor lf_randomColor];
    lab.text = @"我只是一个可爱的颜色";
    lab.textColor = [UIColor lf_colorWithHex:0xa2b3c4];
    [lab sizeToFit];
    lab.center = self.view.center;
    [self.view addSubview:lab];
}

// MARK: - 创建文本标签
- (void)createLabel {
    UILabel *lab = [UILabel lf_lableViewText:@"我是石头里蹦出来的lab"  textColor:[UIColor darkGrayColor] fontSize:14 isBold:true];
    [self.view addSubview:lab];
    lab.center = self.view.center;
    lab.backgroundColor = [UIColor redColor];
}

// MARK: - 打印 UIScreen 的属性
- (void)showScreenProperty {
    NSLog(@"width = %lf, height = %lf, scale = %lf, obj = %@",[UIScreen lf_screenWidth], [UIScreen lf_screenHeight], [UIScreen lf_scale], [UIScreen mainScreen].description);
}

// MARK: - 创建按键
- (void)setupButton {
    
    UIButton *btn1 = [UIButton lf_textButton:@"我只是安静的按钮" fontSize:14 normalColor:[UIColor orangeColor] highlightedColor:[UIColor whiteColor] isRadius:true];
    btn1.frame = CGRectMake(20, 20, CGRectGetWidth(btn1.frame), CGRectGetHeight(btn1.frame));
    btn1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton lf_textImageOfButton:@"返回" fontSize:14 normalColor:[UIColor orangeColor] highlightedColor:[UIColor redColor] bgImageName:@"navigationbar_back_withtext" isRadius:true];
    btn2.frame = CGRectMake(20, 60, CGRectGetWidth(btn2.frame), CGRectGetHeight(btn2.frame));
    btn2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btn2];

}

// MARK: - 是否为空
- (void)isEmpty {
    NSLog(@"%d, %d, %d",[NSObject lf_isEmpty:[NSNull null]], [NSObject lf_isEmpty:@"1"], [NSObject lf_isEmpty:nil]);
}

// MARK: - 获取 BunldInfo
- (void)getBunldInfo {
    NSLog(@"%@, %@, %@", NSBundle.lf_getUUID, [NSBundle lf_getNamespace], [NSBundle mainBundle].infoDictionary);
}

// MARK: - UserDefaults 存取数据
- (void)setupUserdefaults {
    
    NSArray *array = @[@"1", @"2", @"3"];
    [array lf_saveToUserDefaultsWithKey:@"array"];
    NSLog(@"array = %@",[NSObject lf_getFromUserDefaultsWithKey:@"array"]);
}

// MARK: - 获取路径
- (void)getDirPath {
    
    NSString *subPath = @"music.text";
    
    
    NSLog(@"path1 = %@",[NSString lf_appendDirWithDirType:DocumentDirTpey subPath:subPath]);
    
    NSLog(@"path2 = %@",[NSString lf_appendDirWithDirType:CacheDirType subPath:subPath]);
    
    NSLog(@"path3 = %@",[NSString lf_appendDirWithDirType:TempDirType subPath:subPath]);
    
}

// MARK: - 获取设备信息
- (void)getIphoneTypeInfo {
    NSLog(@"%@",[UIDevice currentDevice].model);
}


@end
