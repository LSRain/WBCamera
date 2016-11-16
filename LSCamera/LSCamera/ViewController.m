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
    [self.view addSubview:[LSCameraViewController new].view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
