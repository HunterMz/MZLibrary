//
//  UIView+MzLayout.m
//  MZLibrary
//
//  Created by 猎人 on 2017/3/30.
//  Copyright © 2017年 Hunter. All rights reserved.
//

#import "UIView+MzLayout.h"

@implementation UIView (MzLayout)

- (MZAttributeBlock)mz_constraintTo {
    MZAttributeBlock attributeBlock = ^UIView*(NSLayoutAttribute attr1, NSLayoutRelation relation, UIView *toView, NSLayoutAttribute attr2, CGFloat multiplier, CGFloat constant ) {
        self.translatesAutoresizingMaskIntoConstraints = NO;
        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self attribute:attr1 relatedBy:relation toItem:toView attribute:attr2 multiplier:multiplier constant:constant];
        constraint.active = YES;
        return self;
    };
    return attributeBlock;
}

- (MZConstantBlock)mz_constantToAttribute {
    MZConstantBlock constantBlock = ^UIView*(UIView *view, NSLayoutAttribute attribute, CGFloat constant) {
        return self.mz_constraintTo(attribute, NSLayoutRelationEqual, view, attribute, 1, 0);
    };
    return constantBlock;
}

- (MZViewDistanceBlock)mz_topToTop {
    return ^UIView* (UIView *view, CGFloat distance) {
        return self.mz_constantToAttribute(view, NSLayoutAttributeTop, distance);
    };
}

- (MZViewDistanceBlock)mz_leftToLeft {
    return ^UIView* (UIView *view, CGFloat distacne) {
        return self.mz_constantToAttribute(view, NSLayoutAttributeLeft, distacne);
    };
}

- (MZViewDistanceBlock)mz_bottomToBottom {
    return ^UIView* (UIView *view, CGFloat distance) {
        return self.mz_constantToAttribute(view, NSLayoutAttributeBottom, -distance);
    };
}

- (MZViewDistanceBlock)mz_rightToRight {
    return ^UIView* (UIView *view, CGFloat distance) {
        return self.mz_constantToAttribute(view, NSLayoutAttributeRight, -distance);
    };
}

- (MZViewDistanceBlock)mz_topToBottom {
    return ^UIView* (UIView *view, CGFloat distance) {
        return self.mz_constraintTo(NSLayoutAttributeTop, NSLayoutRelationEqual, view, NSLayoutAttributeBottom, 1, distance);
    };
}

- (MZViewDistanceBlock)mz_bottomToTop {
    return ^UIView* (UIView *view, CGFloat distance) {
        return self.mz_constraintTo(NSLayoutAttributeBottom, NSLayoutRelationEqual, view, NSLayoutAttributeTop, 1, -distance);
    };
}

- (MZViewDistanceBlock)mz_leftToRight {
    return ^UIView* (UIView *view, CGFloat distance) {
        return self.mz_constraintTo(NSLayoutAttributeLeft, NSLayoutRelationEqual, view, NSLayoutAttributeRight, 1, distance);
    };
}

- (MZViewDistanceBlock)mz_rightToLeft {
    return ^UIView* (UIView *view, CGFloat distance) {
        return self.mz_constraintTo(NSLayoutAttributeRight, NSLayoutRelationEqual, view, NSLayoutAttributeLeft, 1, -distance);
    };
}

- (MZDistanceBlock)mz_topToSuperView {
    return ^UIView* (CGFloat distance) {
        return self.mz_topToTop(self.superview, distance);
    };
}

- (MZDistanceBlock)mz_lefToSuperView {
    return ^UIView* (CGFloat distance) {
        return self.mz_leftToLeft(self.superview, distance);
    };
}

- (MZDistanceBlock)mz_bottomToSuperView {
    return ^UIView* (CGFloat distance) {
        return self.mz_bottomToBottom(self.superview, distance);
    };
}

- (MZDistanceBlock)mz_rightToSuperView {
    return ^UIView* (CGFloat distance) {
        return self.mz_rightToRight(self.superview, distance);
    };
}

- (MZViewDistanceBlock)mz_centreX {
    return ^UIView* (UIView *view, CGFloat distance) {
        return self.mz_constantToAttribute(view, NSLayoutAttributeCenterX, distance);
    };
}

- (MZViewDistanceBlock)mz_centreY {
    return ^UIView* (UIView *view, CGFloat distance) {
        return self.mz_constantToAttribute(view, NSLayoutAttributeCenterY, distance);
    };
}

- (MZViewOffsetBlock)mz_centreTo {
    return ^UIView* (UIView *view, CGPoint offset) {
        return self.mz_centreX(view, offset.x).mz_centreY(view, offset.y);
    };
}

- (MZOffsetBlock)mz_centreToSuperView {
    return ^UIView* (CGPoint offset) {
        return self.mz_centreX(self.superview, offset.x).mz_centreY(self.superview, offset.y);
    };
}

- (MZDistanceBlock)mz_centreXToSuperView {
    return ^UIView* (CGFloat distance) {
        return self.mz_centreX(self.superview, distance);
    };
}

- (MZDistanceBlock)mz_centreYToSuperView {
    return ^UIView* (CGFloat distance) {
        return self.mz_centreY(self.superview, distance);
    };
}

- (MZDistanceBlock)mz_width {
    return ^UIView* (CGFloat distance) {
        return self.mz_constraintTo(NSLayoutAttributeWidth, NSLayoutRelationEqual, nil, NSLayoutAttributeNotAnAttribute, 1, distance);
    };
}

- (MZDistanceBlock)mz_height {
    return ^UIView* (CGFloat distance) {
        return self.mz_constraintTo(NSLayoutAttributeHeight, NSLayoutRelationEqual, nil, NSLayoutAttributeNotAnAttribute, 1, distance);
    };
}

- (MZSizeBlock)mz_size {
    return ^UIView* (CGSize size) {
        return self.mz_width(size.width).mz_height(size.height);
    };
}

@end
