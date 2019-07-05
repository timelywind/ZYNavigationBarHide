//
//  ZYBaseViewController.m
//  ZYNavHideTest
//
//  Created by zhenyu on 2019/1/17.
//  Copyright © 2019 zhenyu. All rights reserved.
//

#import "ZYBaseViewController.h"

@interface ZYBaseViewController ()

@end

@implementation ZYBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (BOOL)shouldHideNavigationBar {
    return NO;
}

- (void)navigationControllerDisappearController:(ZYBaseViewController *)viewController {
    BOOL selfHide = [self shouldHideNavigationBar]; // 即将“显示”的页面的导航栏隐藏状态
    BOOL lastHide = NO;     // 即将“消失”的页面的导航栏隐藏状态
    if ([viewController respondsToSelector:@selector(shouldHideNavigationBar)]) {
        lastHide = [viewController shouldHideNavigationBar];
    }
    
    if (selfHide != lastHide) {
        [self.navigationController setNavigationBarHidden:selfHide animated:viewController];
    }
}

@end
