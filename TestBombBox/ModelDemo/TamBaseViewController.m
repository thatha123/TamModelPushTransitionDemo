//
//  TamBaseViewController.m
//  TestBombBox
//
//  Created by xin chen on 2018/1/11.
//  Copyright © 2018年 涂怀安. All rights reserved.
//

#import "TamBaseViewController.h"

@interface TamBaseViewController ()

@end

@implementation TamBaseViewController

-(TamViewControllerTransitioningDelegate *)tamTransitioningDelegate
{
    if (!_tamTransitioningDelegate) {
        _tamTransitioningDelegate = [[TamViewControllerTransitioningDelegate alloc]init];
    }
    return _tamTransitioningDelegate;
}

-(id<UIViewControllerTransitioningDelegate>)transitioningDelegate
{
    return self.tamTransitioningDelegate;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
