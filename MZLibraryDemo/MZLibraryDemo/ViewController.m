//
//  ViewController.m
//  MZLibraryDemo
//
//  Created by 猎人 on 2017/3/30.
//  Copyright © 2017年 Hunter. All rights reserved.
//

#import "ViewController.h"
#import <UIColor+MZ.h>
#import <UIView+MZ.h>
#import <UIView+MzLayout.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *view1 = [UIView new];
    [self.view addSubview:view1];
    view1.mz_centreToSuperView(CGPointZero).mz_size(CGSizeMake(40, 40));
    view1.backgroundColor = [UIColor randomColor];
    
    UIView *view2 = [UIView new];
    [self.view addSubview:view2];
    view2.mz_topToBottom(view1, 20).mz_centreXToSuperView(0).mz_size(CGSizeMake(40, 40));
    view2.backgroundColor = [UIColor randomColor];
    
    UIView *view3 = [UIView new];
    [self.view addSubview:view3];
    view3.mz_centreY(view1, 0).mz_leftToRight(view2, 20).mz_size(CGSizeMake(40, 40));
    view3.backgroundColor = [UIColor randomColor];
    
    UIView *view4 = [UIView new];
    [self.view addSubview:view4];
    view4.mz_topToTop(view2, 0).mz_leftToRight(view2, 20).mz_size(CGSizeMake(40, 40));
    view4.backgroundColor = [UIColor randomColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
