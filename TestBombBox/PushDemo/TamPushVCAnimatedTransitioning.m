//
//  TamPushVCAnimatedTransitioning.m
//  TestBombBox
//
//  Created by xin chen on 2018/1/11.
//  Copyright © 2018年 涂怀安. All rights reserved.
//

#import "TamPushVCAnimatedTransitioning.h"

@implementation TamPushVCAnimatedTransitioning

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext
{
    return 0.5;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    [transitionContext.containerView addSubview:toVC.view];
   
    toVC.view.transform = CGAffineTransformMakeScale(1.0, 0);
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        toVC.view.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
    }];
    
}

@end
