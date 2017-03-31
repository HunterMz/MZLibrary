//
//  UIView+MzLayout.h
//  MZLibrary
//
//  Created by 猎人 on 2017/3/30.
//  Copyright © 2017年 Hunter. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MZ_INVALID MAXFLOAT

@interface UIView (MzLayout)

typedef UIView *(^MZAttributeBlock)(NSLayoutAttribute attr1, NSLayoutRelation relation, UIView *toView, NSLayoutAttribute attr2, CGFloat multiplier, CGFloat constant);
typedef UIView *(^MZConstantBlock)(UIView *view, NSLayoutAttribute attribute, CGFloat constant);
typedef UIView*(^MZDistanceBlock)(UIView *view, CGFloat distance);

- (MZDistanceBlock)mz_topToTop;
- (MZDistanceBlock)mz_leftToLeft;
- (MZDistanceBlock)mz_bottomToBottom;
- (MZDistanceBlock)mz_rightToRight;
@end
