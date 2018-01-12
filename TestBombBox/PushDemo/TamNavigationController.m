//
//  TamNavigationController.m
//  TestBombBox
//
//  Created by xin chen on 2018/1/11.
//  Copyright © 2018年 涂怀安. All rights reserved.
//

#import "TamNavigationController.h"

@interface TamNavigationController ()<UINavigationControllerDelegate>

@end

@implementation TamNavigationController

-(TamNavigationControllerDelegate *)tamNavDelegate
{
    if (!_tamNavDelegate) {
        _tamNavDelegate = [[TamNavigationControllerDelegate alloc]init];
    }
    return _tamNavDelegate;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self.tamNavDelegate;
}

@end
