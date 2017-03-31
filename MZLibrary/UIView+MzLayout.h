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

typedef UIView* (^MZAttributeBlock)(NSLayoutAttribute attr1, NSLayoutRelation relation, UIView *toView, NSLayoutAttribute attr2, CGFloat multiplier, CGFloat constant);
typedef UIView* (^MZConstantBlock)(UIView *view, NSLayoutAttribute attribute, CGFloat constant);
typedef UIView* (^MZViewDistanceBlock)(UIView *view, CGFloat distance);
typedef UIView* (^MZDistanceBlock)(CGFloat distance);
- (MZConstantBlock)mz_constantToAttribute;

/// self.top = view.top --> distance
- (MZViewDistanceBlock)mz_topToTop;

/// self.left = view.left --> distance
- (MZViewDistanceBlock)mz_leftToLeft;

/// self.bottom = view.bottom --> distance
- (MZViewDistanceBlock)mz_bottomToBottom;

/// self.right = view.right --> distance
- (MZViewDistanceBlock)mz_rightToRight;

/// self.top = view.bottom --> distance
- (MZViewDistanceBlock)mz_topToBottom;

/// self.bottom = view.top --> distance
- (MZViewDistanceBlock)mz_bottomToTop;

/// self.left = view.right --> distance
- (MZViewDistanceBlock)mz_leftToRight;

/// self.right = view.left --> distance
- (MZViewDistanceBlock)mz_rightToLeft;

/// self.top <--> superView.top's distance
- (MZDistanceBlock)mz_topToSuperView;

/// self.left <--> superview.left's distance
- (MZDistanceBlock)mz_lefToSuperView;

/// slef.bottom <--> super.bottom's distance
- (MZDistanceBlock)mz_bottomToSuperView;

/// self.right <--> super.right's distance
- (MZDistanceBlock)mz_rightToSuperView;
@end
