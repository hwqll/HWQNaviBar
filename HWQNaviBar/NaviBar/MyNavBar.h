//
//  MyNavBar.h
//  jmm
//
//  Created by hwq on 2017/12/26.
//  Copyright © 2017年 hwq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyNavBar : UIView

@property (nonatomic, strong) UIButton *back; //返回按钮
@property (nonatomic, strong) UIButton *right;//右侧按钮
@property (nonatomic, strong) NSString *rightText;
@property (nonatomic, strong) UILabel *navTitle; //标题
@property (nonatomic, assign) NSString *title;


//+ (instancetype)initWithFrame:(CGRect)frame andTitle:(NSString *)title;
@end
