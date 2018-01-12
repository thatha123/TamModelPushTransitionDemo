//
//  TamVCAnimatedTransitioning.m
//  TestBombBox
//
//  Created by xin chen on 2018/1/11.
//  Copyright © 2018年 涂怀安. All rights reserved.
//

#import "TamVCAnimatedTransitioning.h"

@implementation TamVCAnimatedTransitioning

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext
{
    return self.animTime;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *fromVc = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
    if (toVC.beingPresented) {
        [transitionContext.containerView addSubview:toVC.view];
        toVC.view.transform = CGAffineTransformMakeScale(1.0, 0);
        
        [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
            toVC.view.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        }];
        
    }else if (fromVc.beingDismissed){
    
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
    
}


@end
