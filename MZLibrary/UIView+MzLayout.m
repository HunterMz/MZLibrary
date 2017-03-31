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

- (MZDistanceBlock)mz_topToTop {
    return ^UIView* (UIView *view, CGFloat distance) {
        return self.mz_constantToAttribute(view, NSLayoutAttributeTop, distance);
    };
}

- (MZDistanceBlock)mz_leftToLeft {
    return ^UIView* (UIView *view, CGFloat distacne) {
        return self.mz_constantToAttribute(view, NSLayoutAttributeLeft, distacne);
    };
}

- (MZDistanceBlock)mz_bottomToBottom {
    return ^UIView* (UIView *view, CGFloat distance) {
        return self.mz_constantToAttribute(view, NSLayoutAttributeBottom, -distance);
    };
}

- (MZDistanceBlock)mz_rightToRight {
    return ^UIView* (UIView *view, CGFloat distance) {
        return self.mz_constantToAttribute(view, NSLayoutAttributeRight, -distance);
    };
}

@end
