//
//  ViewController.m
//  LYTShowAndMiss
//
//  Created by 云盛科技 on 2017/7/25.
//  Copyright © 2017年 神廷. All rights reserved.
//

#import "ViewController.h"
#import "LYTBackView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(10, 70, 100, 40);
    [btn1 setTitle:@"弹出蒙板" forState:UIControlStateNormal];
    btn1.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn1];
    [btn1 addTarget:self action:@selector(btn1Click) forControlEvents:UIControlEventTouchUpInside];

}
-(void)btn1Click{
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 175, 200)];
    view.backgroundColor = [UIColor whiteColor];
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(35, 30, 105, 20);
    [btn2 setTitle:@"隐藏蒙板" forState:UIControlStateNormal];
    btn2.backgroundColor = [UIColor redColor];
    [btn2 addTarget:self action:@selector(btn2Click) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:btn2];
    
    [LYTBackView showWithView:view];
}

-(void)btn2Click{
    
    [LYTBackView dissMiss];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
