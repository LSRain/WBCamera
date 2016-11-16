//
//  LSCameraViewController.m
//  LSCamera
//
//  Created by WangBiao on 2016/11/16.
//  Copyright © 2016年 lsrain. All rights reserved.
//

#import "LSCameraViewController.h"

@interface LSCameraViewController ()

@property (nonatomic, strong) IBOutletCollection(NSLayoutConstraint) NSArray * maskViewConstraint;

@end

@implementation LSCameraViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)clickBtnAction:(UIButton *)sender {

    //关闭快门
    [self maskViewAminWithClose:YES];
    
    // 开启快门
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)2 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        
        [self maskViewAminWithClose:NO];
    });
    
}

- (void)maskViewAminWithClose:(Boolean)close{
    if (close) {
        // 禁用选中的约束
        // IOS 10
        [NSLayoutConstraint deactivateConstraints:_maskViewConstraint];
    } else{
        [NSLayoutConstraint activateConstraints:_maskViewConstraint];
    }
    
    [UIView animateWithDuration:.2 animations:^{
        [self.view layoutIfNeeded];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
