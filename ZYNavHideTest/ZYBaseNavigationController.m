//
//  ZYBaseNavigationController.m
//  ZYNavHideTest
//
//  Created by zhenyu on 2019/1/17.
//  Copyright © 2019 zhenyu. All rights reserved.
//

#import "ZYBaseNavigationController.h"

@interface ZYBaseNavigationController () <UINavigationControllerDelegate>

@property (nonatomic, weak) UIViewController *lastViewController;

@end

@implementation ZYBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.delegate = self;
}


#pragma mark - UINavigationControllerDelegate
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
    //  will show new controller
    if ([viewController respondsToSelector:@selector(navigationControllerDisappearController:)]) {
        [viewController performSelector:@selector(navigationControllerDisappearController:) withObject:self.lastViewController];
    }
#pragma clang diagnostic pop

}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated {
    self.lastViewController = viewController;
}

@end
