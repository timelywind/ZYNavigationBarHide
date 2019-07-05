//
//  ViewController.m
//  ZYNavHideTest
//
//  Created by zhenyu on 2019/1/17.
//  Copyright © 2019 zhenyu. All rights reserved.
//

#import "ViewController.h"
#import "ZYTestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
}

- (BOOL)shouldHideNavigationBar {
    return YES;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    ZYTestViewController *testControlloer = [[ZYTestViewController alloc] init];
    
    [self.navigationController pushViewController:testControlloer animated:YES];
}

@end
