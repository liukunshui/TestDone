//
//  ViewController.m
//  KSFDFullscreenPopGesture
//
//  Created by liuks on 16/12/29.
//  Copyright © 2016年 wacosoft. All rights reserved.
//

#import "ViewController.h"
#import "KS_OneViewController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.navigationController.fd_prefersNavigationBarHidden = YES;
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.backgroundColor = [UIColor lightGrayColor];
    [btn setTitle:@"Push" forState:UIControlStateNormal];
    btn.frame = CGRectMake(10,70+80, 80,40);
    [btn addTarget:self action:@selector(go) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    self.navigationController.navigationBarHidden = YES;
}
-(void)go{
    KS_OneViewController *one =[[KS_OneViewController alloc]init];
    [self.navigationController pushViewController:one animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
