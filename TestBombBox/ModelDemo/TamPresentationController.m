//
//  TamPresentationController.m
//  TestBombBox
//
//  Created by xin chen on 2018/1/11.
//  Copyright © 2018年 涂怀安. All rights reserved.
//

#import "TamPresentationController.h"

@interface TamPresentationController()

@property(nonatomic,strong)UIButton *bgkBtn;

@end

@implementation TamPresentationController

-(UIButton *)bgkBtn
{
    if (!_bgkBtn) {
        _bgkBtn = [[UIButton alloc]init];
        _bgkBtn.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.3];
        _bgkBtn.frame = self.containerView.bounds;
        [_bgkBtn addTarget:self action:@selector(bgkAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.containerView addSubview:_bgkBtn];
    }
    return _bgkBtn;
}

-(void)bgkAction:(UIButton *)sender
{
    if (self.isCanTouchBgkBack) {
        [self.presentedViewController dismissViewControllerAnimated:YES completion:nil];
    }
}

- (void)containerViewWillLayoutSubviews
{
    [super containerViewWillLayoutSubviews];
    if (CGRectGetWidth(self.viewRect) != 0 && CGRectGetHeight(self.viewRect) != 0) {
        self.presentedView.frame = self.viewRect;
    }
}

- (void)presentationTransitionWillBegin
{
    [super presentationTransitionWillBegin];
    self.bgkBtn.alpha = 0;
    [UIView animateWithDuration:self.animTime animations:^{
        self.bgkBtn.alpha = 1.0;
    }];
}


- (void)dismissalTransitionWillBegin
{
    [super dismissalTransitionWillBegin];
    [UIView animateWithDuration:self.animTime animations:^{
        self.bgkBtn.alpha = 0.0;
    }completion:^(BOOL finished) {
        [self.bgkBtn removeFromSuperview];
    }];
}



@end
