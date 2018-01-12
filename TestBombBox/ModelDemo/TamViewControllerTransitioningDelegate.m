//
//  TamViewControllerTransitioningDelegate.m
//  TestBombBox
//
//  Created by xin chen on 2018/1/11.
//  Copyright © 2018年 涂怀安. All rights reserved.
//

#import "TamViewControllerTransitioningDelegate.h"
#import "TamVCAnimatedTransitioning.h"
#import "TamPresentationController.h"

@interface TamViewControllerTransitioningDelegate()

@property(nonatomic,strong)TamVCAnimatedTransitioning *tamAnimatedTransition;

@end

@implementation TamViewControllerTransitioningDelegate

-(TamVCAnimatedTransitioning *)tamAnimatedTransition
{
    if (!_tamAnimatedTransition) {
        _tamAnimatedTransition = [[TamVCAnimatedTransitioning alloc]init];
        _tamAnimatedTransition.animTime = self.animTime == 0 ? 0.5 : self.animTime;
    }
    return _tamAnimatedTransition;
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    return self.tamAnimatedTransition;
}

- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    return self.tamAnimatedTransition;
}

- (nullable UIPresentationController *)presentationControllerForPresentedViewController:(UIViewController *)presented presentingViewController:(nullable UIViewController *)presenting sourceViewController:(UIViewController *)source
{
    TamPresentationController *presentationController = [[TamPresentationController alloc]initWithPresentedViewController:presented presentingViewController:presenting];
    presentationController.animTime = self.animTime == 0 ? 0.5 : self.animTime;
    presentationController.isCanTouchBgkBack = self.isCanTouchBgkBack;
    presentationController.viewRect = self.viewRect;
    return presentationController;
}

@end
