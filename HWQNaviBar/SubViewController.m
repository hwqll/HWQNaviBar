//
//  SubViewController.m
//  HWQNaviBar
//
//  Created by hwq on 2018/1/2.
//  Copyright © 2018年 hwq. All rights reserved.
//

#import "SubViewController.h"
#import "MyNavBar.h"

@interface SubViewController ()

@property(nonatomic, strong)UILabel *text;

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    if (iPhoneX) {
        MyNavBar *bar = [[MyNavBar alloc]initWithFrame:CGRectMake(0, 0, Screen_Width, XNavHeight)];
        bar.navTitle.text = @"sub";
        [bar.back addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
        [bar.right addTarget:self action:@selector(jump:) forControlEvents:UIControlEventTouchUpInside];
        bar.right.hidden = false;
        bar.rightText = @"测试";
        [self.view addSubview:bar];
    }else{
        MyNavBar *bar = [[MyNavBar alloc]initWithFrame:CGRectMake(0, 0, Screen_Width, NavHeight)];
        bar.navTitle.text = @"sub";
       [bar.back addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
        [bar.right addTarget:self action:@selector(jump:) forControlEvents:UIControlEventTouchUpInside];
         bar.right.hidden = false;
        bar.rightText = @"测试";
        [self.view addSubview:bar];
    }
    _text = [[UILabel alloc]initWithFrame:CGRectMake(Screen_Width/2, 200, 100, 80)];
    _text.textColor = [UIColor redColor];
    [self.view addSubview:_text];
}
- (void)back:(id)sender{
    [self.navigationController popViewControllerAnimated:true];
}
- (void)jump:(id)sender{
    NSLog(@"测试");
    _text.text = @"测试";
//    UIViewController *vc = [[UIViewController alloc]init];
//    vc.view.backgroundColor = [UIColor orangeColor];
//    [self.navigationController pushViewController:vc animated:true];
}

@end
