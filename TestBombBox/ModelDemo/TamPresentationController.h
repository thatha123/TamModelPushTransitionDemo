//
//  TamPresentationController.h
//  TestBombBox
//
//  Created by xin chen on 2018/1/11.
//  Copyright © 2018年 涂怀安. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TamPresentationController : UIPresentationController

@property(nonatomic,assign)double animTime;//动画时间
@property(nonatomic,assign)BOOL isCanTouchBgkBack;//是否能点击背景返回
@property(nonatomic,assign)CGRect viewRect;//视图显示的大小

@end
