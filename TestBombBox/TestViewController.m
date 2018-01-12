//
//  TestViewController.m
//  TestBombBox
//
//  Created by xin chen on 2018/1/11.
//  Copyright © 2018年 涂怀安. All rights reserved.
//

#import "TestViewController.h"
#import "ViewController.h"

@interface TestViewController ()

@property(nonatomic,weak)UIImageView *imgView;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    UIImageView *imgView = [[UIImageView alloc]init];
    self.imgView = imgView;
    imgView.image = [UIImage imageNamed:@"test"];
    imgView.frame = CGRectMake(0, 200, 200, 200);
    [self.view addSubview:imgView];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //model测试
    ViewController *vc = [[ViewController alloc]init];
    vc.view.backgroundColor = [UIColor blueColor];
    vc.modalPresentationStyle = UIModalPresentationCustom;
    vc.tamTransitioningDelegate.animTime = 2.0;
    vc.tamTransitioningDelegate.isCanTouchBgkBack = YES;
    vc.tamTransitioningDelegate.viewRect = CGRectMake(0, 0, 100, 200);
    [self presentViewController:vc animated:YES completion:nil];

}

@end
