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
typedef UIView* (^MZSizeBlock)(CGSize size);
typedef UIView* (^MZOffsetBlock)(CGPoint offset);
typedef UIView* (^MZViewOffsetBlock)(UIView *view, CGPoint offset);

- (MZConstantBlock)mz_constantToAttribute;

/// self.top <--> view.top's distance
- (MZViewDistanceBlock)mz_topToTop;

/// self.left <--> view.left's distance
- (MZViewDistanceBlock)mz_leftToLeft;

/// self.bottom <--> view.bottom's distance
- (MZViewDistanceBlock)mz_bottomToBottom;

/// self.right <--> view.right's distance
- (MZViewDistanceBlock)mz_rightToRight;

/// self.top <--> view.bottom's distance
- (MZViewDistanceBlock)mz_topToBottom;

/// self.bottom <--> view.top's distance
- (MZViewDistanceBlock)mz_bottomToTop;

/// self.left <--> view.right's distance
- (MZViewDistanceBlock)mz_leftToRight;

/// self.right <--> view.left's distance
- (MZViewDistanceBlock)mz_rightToLeft;

/// self.top <--> superView.top's distance
- (MZDistanceBlock)mz_topToSuperView;

/// self.left <--> superview.left's distance
- (MZDistanceBlock)mz_lefToSuperView;

/// slef.bottom <--> superview.bottom's distance
- (MZDistanceBlock)mz_bottomToSuperView;

/// self.right <--> superview.right's distance
- (MZDistanceBlock)mz_rightToSuperView;

/// self.centre.x <--> view.centre.x's distance
- (MZViewDistanceBlock)mz_centreX;

/// self.centre.Y <--> view.center.y's distance
- (MZViewDistanceBlock)mz_centreY;

/// self.centre <--> viwe.centre's offset
- (MZViewOffsetBlock)mz_centreTo;

/// self.centre <--> superview.centre.offset
- (MZOffsetBlock)mz_centreToSuperView;

/// self.centre.x <--> superview.center.x's distance
- (MZDistanceBlock)mz_centreXToSuperView;

/// self.centre.y <--> superview.centre.y's distance
- (MZDistanceBlock)mz_centreYToSuperView;

/// self.size = size
- (MZSizeBlock)mz_size;

/// self.width = distance
- (MZDistanceBlock)mz_width;

/// self.height = distance
- (MZDistanceBlock)mz_height;
@end
