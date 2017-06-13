//
//  ViewController.m
//  LYSlide
//
//  Created by mac on 17/6/1.
//  Copyright © 2017年 liying. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()
{
    UIView *slideView;
    UIButton *btn;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=@"标题";
    UIButton *button = [[UIButton alloc] init];
    button.frame=CGRectMake(0, 0, 80, 40);
    [button setTitle:@"菜单" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(show) forControlEvents:UIControlEventTouchUpInside];
    
    // 修改导航栏左边的item
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    [self createSlide];
}

-(void)createSlide{
    slideView=[[UIView alloc] initWithFrame:CGRectMake(-100, 0, 100, [UIScreen mainScreen].bounds.size.height)];
    slideView.backgroundColor=[UIColor redColor];
    [[UIApplication sharedApplication].keyWindow addSubview:slideView];
}
-(void)show{
    SecondViewController *vc=[[SecondViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
//    btn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
//    [btn addTarget:self action:@selector(hide) forControlEvents:UIControlEventTouchDown];
//    [btn setBackgroundColor:[[UIColor blackColor] colorWithAlphaComponent:0.4]];
//    [[UIApplication sharedApplication].keyWindow addSubview:btn];
//    [UIView animateWithDuration:0.5f animations:^{
//        slideView.frame = CGRectMake(0, 0, 100,[UIScreen mainScreen].bounds.size.height);
//    } completion:^(BOOL finished) {
//
//    }];
}
-(void)hide{
    [UIView animateWithDuration:0.5f animations:^{
        btn.alpha=0;
        slideView.frame = CGRectMake(-100, 0, 100,[UIScreen mainScreen].bounds.size.height);
    }completion:^(BOOL finished){
        [btn removeFromSuperview];
    }];
    
}
@end
