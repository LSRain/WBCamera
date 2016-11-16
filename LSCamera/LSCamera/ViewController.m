//
//  ViewController.m
//  LSCamera
//
//  Created by WangBiao on 2016/11/16.
//  Copyright © 2016年 lsrain. All rights reserved.
//

#import "ViewController.h"
#import "LSCameraViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     此处用于测试：
        - 要特别注意的是，如果只是将控制器A的view加入当前控制器的view，那么在展示的时候，响应者链条就断了，
            A的按钮将不能再响应
     */
//    [self.view addSubview:[LSCameraViewController new].view];
    
    [self setupUI];
}

- (void)setupUI{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.center = self.view.center;
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

- (void)btnClick{
    [self presentViewController:[LSCameraViewController new] animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
