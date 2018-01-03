//
//  MyNavBar.m
//  jmm
//
//  Created by hwq on 2017/12/26.
//  Copyright © 2017年 hwq. All rights reserved.
//

#import "MyNavBar.h"
//屏幕宽度
#define Screen_Width [[UIScreen mainScreen] bounds].size.width
#define iPhoneX     ([[UIScreen mainScreen] bounds].size.height == 812)

@interface MyNavBar()

@end

@implementation MyNavBar


- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        if (iPhoneX) {
            _back = [[UIButton alloc]initWithFrame:CGRectMake(10, frame.size.height*3/5, 40, 40)];
            [_back setImage:[UIImage imageNamed:@"back.png"] forState:UIControlStateNormal];
            [self addSubview:_back];
            _right = [[UIButton alloc]initWithFrame:CGRectMake(Screen_Width-100, frame.size.height*3/5, 100, 40)];
            _right.titleLabel.font = [UIFont fontWithName:@"PingFang SC" size:13.0f];
            //[_right setImage:[UIImage imageNamed:@"back.png"] forState:UIControlStateNormal];
            _right.hidden = YES;
            [self addSubview:_right];
            _navTitle = [[UILabel alloc]initWithFrame:CGRectMake(Screen_Width/2-60, frame.size.height*3/5-2, 120, frame.size.height/2)];
            //_navTitle.center = self.center;
            _navTitle.textAlignment = NSTextAlignmentCenter;
            _navTitle.textColor = [UIColor whiteColor];
            _navTitle.font = [UIFont fontWithName:@"PingFang SC" size:19.0];
            [self addSubview:_navTitle];
            
            //颜色可以更改
            self.backgroundColor = [UIColor redColor];
        }else{
            _back = [[UIButton alloc]initWithFrame:CGRectMake(10, frame.size.height/2-5, 40, 40)];
            [_back setImage:[UIImage imageNamed:@"back.png"] forState:UIControlStateNormal];
            [self addSubview:_back];
            _right = [[UIButton alloc]initWithFrame:CGRectMake(Screen_Width-100, frame.size.height/2-2, 100, 30)];
            _right.titleLabel.font = [UIFont fontWithName:@"PingFang SC" size:15.0];
            //[_right setImage:[UIImage imageNamed:@"back.png"] forState:UIControlStateNormal];
            _right.hidden = YES;
            [self addSubview:_right];
            _navTitle = [[UILabel alloc]initWithFrame:CGRectMake(Screen_Width/2-60, frame.size.height/2 - 3, 120, frame.size.height/2)];
            //_navTitle.center = self.center;
            _navTitle.textAlignment = NSTextAlignmentCenter;
            _navTitle.textColor = [UIColor whiteColor];
            _navTitle.font = [UIFont fontWithName:@"PingFang SC" size:19.0];
            [self addSubview:_navTitle];
            self.backgroundColor =  [UIColor redColor];;
        }
        
       
    }
    return self;
}
//设置标题
-(void)setTitle:(NSString *)title {
    _navTitle.text = title;
}
//设置右侧按钮文字
-(void)setRightText:(NSString *)rightText {
    [_right setTitle:rightText forState:UIControlStateNormal];
}
@end
