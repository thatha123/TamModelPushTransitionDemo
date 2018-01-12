//
//  ViewController.m
//  TestBombBox
//
//  Created by xin chen on 2018/1/11.
//  Copyright © 2018年 涂怀安. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"

@interface ViewController ()

@property(nonatomic,weak)UIImageView *imgView;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imgView = [[UIImageView alloc]init];
    self.imgView = imgView;
    imgView.image = [UIImage imageNamed:@"test"];
    imgView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:imgView];
//    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
//    tapGes.numberOfTapsRequired = 1;
//    imgView.userInteractionEnabled = YES;
//    [imgView addGestureRecognizer:tapGes];
    
}

//-(void)tapAction:(UITapGestureRecognizer *)tapGes
//{
//    TestViewController *testVc = [[TestViewController alloc]init];
//    [self.navigationController pushViewController:testVc animated:YES];
//}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //model测试
    TestViewController *testVc = [[TestViewController alloc]init];
    testVc.modalPresentationStyle = UIModalPresentationCustom;
    testVc.tamTransitioningDelegate.animTime = 1.0;
    testVc.tamTransitioningDelegate.isCanTouchBgkBack = YES;
    testVc.tamTransitioningDelegate.viewRect = CGRectMake(100, 200, 100, 200);
    [self presentViewController:testVc animated:YES completion:nil];
}


@end
