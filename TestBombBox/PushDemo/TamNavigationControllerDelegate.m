//
//  TamNavigationControllerDelegate.m
//  TestBombBox
//
//  Created by xin chen on 2018/1/11.
//  Copyright © 2018年 涂怀安. All rights reserved.
//

#import "TamNavigationControllerDelegate.h"
#import "TamPushVCAnimatedTransitioning.h"
#import "TamPopVCAnimatedTransitioning.h"

@interface TamNavigationControllerDelegate()

@property(nonatomic,strong)TamPushVCAnimatedTransitioning *pushAnimatedTransition;
@property(nonatomic,strong)TamPopVCAnimatedTransitioning *popAnimatedTransition;

@end

@implementation TamNavigationControllerDelegate

-(TamPushVCAnimatedTransitioning *)pushAnimatedTransition
{
    if (!_pushAnimatedTransition) {
        _pushAnimatedTransition = [[TamPushVCAnimatedTransitioning alloc]init];
    }
    return _pushAnimatedTransition;
}

-(TamPopVCAnimatedTransitioning *)popAnimatedTransition
{
    if (!_popAnimatedTransition) {
        _popAnimatedTransition = [[TamPopVCAnimatedTransitioning alloc]init];
    }
    return _popAnimatedTransition;
}

//- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
//{
//
//}

- (nullable id <UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController
                                   interactionControllerForAnimationController:(id <UIViewControllerAnimatedTransitioning>) animationController
{
    return nil;
}

- (nullable id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                            animationControllerForOperation:(UINavigationControllerOperation)operation
                                                         fromViewController:(UIViewController *)fromVC
                                                           toViewController:(UIViewController *)toVC
{
    if (operation == UINavigationControllerOperationPush) {
        return self.pushAnimatedTransition;
    }else if (operation == UINavigationControllerOperationPop){
        return self.popAnimatedTransition;
    }
    return nil;
}

@end
