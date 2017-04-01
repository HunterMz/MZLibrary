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

    UIView *testView1 = [UIView new];
    [self.view addSubview:testView1];
    testView1.mz_centreToSuperView(CGPointZero).mz_size(CGSizeMake(40, 40));
    testView1.backgroundColor = [UIColor randomColor];
    
    UIView *view2 = [UIView new];
    [self.view addSubview:view2];
    view2.mz_topToBottom(testView1, 20).mz_centreXToSuperView(0).mz_size(CGSizeMake(40, 40));
    view2.backgroundColor = [UIColor randomColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
