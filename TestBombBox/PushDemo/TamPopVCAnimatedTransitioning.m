//
//  TamPopVCAnimatedTransitioning.m
//  TestBombBox
//
//  Created by xin chen on 2018/1/11.
//  Copyright © 2018年 涂怀安. All rights reserved.
//

#import "TamPopVCAnimatedTransitioning.h"

@implementation TamPopVCAnimatedTransitioning

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext
{
    return 0.5;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *toVc = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *fromVc = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    [transitionContext.containerView addSubview:toVc.view];
    [transitionContext.containerView addSubview:fromVc.view];
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        fromVc.view.transform = CGAffineTransformMakeScale(1.0, 0.000001);
    } completion:^(BOOL finished) {
        BOOL wasCancelled = [transitionContext transitionWasCancelled];
        if (!wasCancelled) {
            [fromVc.view removeFromSuperview];
        }
        [transitionContext completeTransition:!wasCancelled];
        
    }];
  
}

@end
