//
//  TamNavigationController.h
//  TestBombBox
//
//  Created by xin chen on 2018/1/11.
//  Copyright © 2018年 涂怀安. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TamNavigationControllerDelegate.h"

@interface TamNavigationController : UINavigationController

@property(nonatomic,strong)TamNavigationControllerDelegate *tamNavDelegate;

@end
