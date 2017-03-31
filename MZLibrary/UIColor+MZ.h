//
//  UIColor+MZ.h
//  MZLibrary
//
//  Created by 猎人 on 2017/3/30.
//  Copyright © 2017年 Hunter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (MZ)
/// 生成随机色
+ (UIColor *)randomColor;

/**
 根据16进制生成透明度为1的颜色

 @param hex 16进制
 @return 颜色
 */
+ (UIColor *)HEX:(NSInteger)hex;



/**
 根据16进制生成可调节透明度的颜色

 @param hex 16进制
 @param opacity 透明度
 @return 颜色
 */
+ (UIColor *)HEX:(NSInteger)hex alpha:(float)opacity;


/**
 根据 R G B 生成颜色

 @param r red 值
 @param g green 值
 @param b blue 值
 @return 颜色
 */
+ (UIColor *)R:(NSInteger)r G:(NSInteger)g B:(NSInteger)b;


/**
 根据 R G B A 生成颜色
 
 @param r red 值
 @param g green 值
 @param b blue 值
 @param a alpha 值
 @return 颜色
 */
+ (UIColor *)R:(NSInteger)r G:(NSInteger)g B:(NSInteger)b A:(NSInteger)a;
@end
