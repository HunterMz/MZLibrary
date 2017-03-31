//
//  UIColor+MZ.m
//  MZLibrary
//
//  Created by 猎人 on 2017/3/30.
//  Copyright © 2017年 Hunter. All rights reserved.
//

#import "UIColor+MZ.h"

@implementation UIColor (MZ)
+ (UIColor *)R:(NSInteger)r G:(NSInteger)g B:(NSInteger)b A:(NSInteger)a{
    return [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:a / 255.0];
}

+ (UIColor *)R:(NSInteger)r G:(NSInteger)g B:(NSInteger)b{
    return [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:1];
}

+ (UIColor *)HEX:(NSInteger)hex{
    return [UIColor HEX:hex alpha:1.0];
}

+ (UIColor *)HEX:(NSInteger)hex alpha:(float)opacity {
    int r = (hex >> 16) & 0xFF;
    int g = (hex >> 8) & 0xFF;
    int b = (hex) & 0xFF;
    return [UIColor colorWithRed:r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:opacity];
}

+ (UIColor *)randomColor{
    return [self R:arc4random()%255 G:arc4random()%255 B:arc4random()%255];
}
@end
