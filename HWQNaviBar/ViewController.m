//
//  ViewController.m
//  HWQNaviBar
//
//  Created by hwq on 2018/1/2.
//  Copyright © 2018年 hwq. All rights reserved.
//

#import "ViewController.h"
#import "MyNavBar.h"
#import "SubViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (iPhoneX) {
        MyNavBar *bar = [[MyNavBar alloc]initWithFrame:CGRectMake(0, 0, Screen_Width, XNavHeight)];
        bar.navTitle.text = @"自定义导航栏";
        bar.back.hidden = YES;
        [self.view addSubview:bar];
    }else{
        MyNavBar *bar = [[MyNavBar alloc]initWithFrame:CGRectMake(0, 0, Screen_Width, NavHeight)];
        bar.navTitle.text = @"自定义导航栏";
        bar.back.hidden = YES;
        [self.view addSubview:bar];
    }
}
- (IBAction)jump:(id)sender {
    SubViewController *sub = [[SubViewController alloc]init];
    [self.navigationController pushViewController:sub animated:true];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
