//
//  ViewController.m
//  MainProject
//
//  Created by zhangjikuan on 2017/12/1.
//  Copyright © 2017年 zhangjikuan. All rights reserved.
//

#import "ViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>
#import <A_Category/CTMediator+A.h>

@interface ViewController ()
@property (nonatomic, strong) UIButton *pushAViewControllerButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self.view addSubview:self.pushAViewControllerButton];
}
- (void)viewWillLayoutSubviews {
    
    [super viewWillLayoutSubviews];
    
    [self.pushAViewControllerButton sizeToFit];
    [self.pushAViewControllerButton centerEqualToView:self.view];
}

#pragma mark - response
- (void)didTappedPushAViewControllerButton:(UIButton *)button {
    UIViewController *viewController = [[CTMediator sharedInstance] A_aViewController];
    [self.navigationController pushViewController:viewController animated:YES];
}


#pragma  mark - setters and getters

- (UIButton *)pushAViewControllerButton {
    if (!_pushAViewControllerButton) {
        _pushAViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushAViewControllerButton setTitle:@"push A ViewController" forState:UIControlStateNormal];
        [_pushAViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushAViewControllerButton addTarget:self action:@selector(didTappedPushAViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _pushAViewControllerButton;
}


@end
