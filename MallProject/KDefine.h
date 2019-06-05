//
//  KDefine.h
//  MallProject
//
//  Created by YRL on 2019/6/5.
//  Copyright © 2019 heaven. All rights reserved.
//

#ifndef KDefine_h
#define KDefine_h

#define kBackgroundColor  [UIColor whiteColor]
#define kNavTitleColor  [UIColor blackColor]
#define kNavBackgroundColor  [UIColor whiteColor]
#define kTabBarTitleNormalColor  [UIColor colorWithHexString:@"#A6A6A6"]
#define kTabBarTitleSelectColor  [UIColor colorWithHexString:@"#fcb314"]

// 当前系统版本
#define CurrentSystem   [[UIDevice currentDevice].systemVersion integerValue]
// 当前程序的主窗口
#define myWindow [UIApplication sharedApplication].keyWindow
// 当前屏幕宽度
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
// 当前屏幕高度
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
// 适配比例
#define adapt_Rate SCREEN_WIDTH/375
// R/G/B颜色设置
#define colorWithRGB(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
// 设置字体样式/大小
#define Khfont(a) [UIFont fontWithName:@"HelveticaNeue" size:a]
// 设置默认样式字体大小
#define Sysfont(a) [UIFont systemFontOfSize:a]
// 设置0.5高度线条颜色
#define color_e6e6e6 [MyController colorWithHexString:@"e6e6e6"]

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self

#endif /* KDefine_h */
