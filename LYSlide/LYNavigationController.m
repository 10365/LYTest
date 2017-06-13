//
//  LYNavigationController.m
//  LYSlide
//
//  Created by mac on 17/6/2.
//  Copyright © 2017年 liying. All rights reserved.
//

#import "LYNavigationController.h"

@interface LYNavigationController ()

@end

@implementation LYNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    [super pushViewController:viewController animated:animated];
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 80, 35);
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchDown];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [btn sizeToFit];
    viewController.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc] initWithCustomView:btn];
    
    viewController.navigationItem.leftBarButtonItem.tintColor=[UIColor redColor];
    
}

-(void)back{
    [self popViewControllerAnimated:YES];
}

@end
