//
//  ViewController.m
//  CustomNavigationProject
//
//  Created by xudandan on 16/11/28.
//  Copyright © 2016年 WuLian. All rights reserved.
//

#import "MainViewController.h"
#import "SubViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setMainNavigationBar:NO];
    
    [self initTitleViewWithText:@"Main" type:0];
    
    CGFloat btnWidth = 200;
    CGFloat btnHeight = 40;
    
    UIButton *pushBtn = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width - btnWidth) / 2, (self.view.frame.size.height - btnHeight - 64) / 2, btnWidth, btnHeight)];
    [pushBtn setTitle:@"跳转" forState:UIControlStateNormal];
    pushBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    pushBtn.titleLabel.font = [UIFont systemFontOfSize:16];
    [pushBtn setBackgroundColor:NAVIBARBGColor];
    [pushBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [pushBtn addTarget:self action:@selector(pushNext:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
}

- (void)pushNext:(id)sender {
    
    SubViewController *subVC = [[SubViewController alloc] init];
    [self.navigationController pushViewController:subVC animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
