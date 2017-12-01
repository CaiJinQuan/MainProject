//
//  AViewController.m
//  MainProject
//
//  Created by zhangjikuan on 2017/12/1.
//  Copyright © 2017年 zhangjikuan. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>
@interface AViewController ()
@property (nonatomic, strong) UIButton *pushBViewControllerButton;

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.pushBViewControllerButton];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    [self.pushBViewControllerButton sizeToFit];
    [self.pushBViewControllerButton centerEqualToView:self.view];
}
#pragma mark - respondes
- (void)didTappedPushBViewControllerButton:(UIButton *)button {
    BViewController *viewController = [[BViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

#pragma mark - setters and getters
- (UIButton *)pushBViewControllerButton {
    if (!_pushBViewControllerButton) {
        _pushBViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushBViewControllerButton setTitle:@"push B ViewController" forState:UIControlStateNormal];
        [_pushBViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushBViewControllerButton addTarget:self action:@selector(didTappedPushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _pushBViewControllerButton;
}

@end
