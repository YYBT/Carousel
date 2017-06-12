//
//  CircleHomeHeadView.m
//  TopAnchor
//
//  Created by yaoyaodu on 2017/5/26.
//  Copyright © 2017年 TopAnchor. All rights reserved.
//
#define PingFang_Regular(s) (([[[UIDevice currentDevice] systemVersion] floatValue] >= 9)?([UIFont fontWithName:@"PingFangSC-Regular" size:s]):([UIFont fontWithName:@".PingFang-SC-Regular" size:s]))

// View 圆角和加边框
#define ViewBorderRadius(View, Radius, Width, Color)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES];\
[View.layer setBorderWidth:(Width)];\
[View.layer setBorderColor:[Color CGColor]]

// View 圆角
#define ViewRadius(View, Radius)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES]

#import "CircleHomeHeadImageView.h"

@implementation CircleHomeHeadImageView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        [self loadView];
    }
    return self;
}
- (void)loadView{
    _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.height, self.frame.size.height)];
    _imageView.image = [UIImage imageNamed:@"launch_bg"];
    [self addSubview:_imageView];
    ViewBorderRadius(_imageView, self.frame.size.height/2.0, 1, [UIColor whiteColor]);
    
    _label = [[UILabel alloc]initWithFrame:CGRectMake(self.frame.size.height, 0, 60, self.frame.size.height)];
    _label.text = @"我的圈子似懂非懂是";
    _label.font = PingFang_Regular(11);
    _label.textColor =[ UIColor whiteColor];
    [self addSubview:_label];
}
- (void)layoutSubviews{
    _imageView.frame = CGRectMake(0, 0, self.frame.size.height, self.frame.size.height);
    _label.frame = CGRectMake(self.frame.size.height, 0, 60, self.frame.size.height);
    ViewBorderRadius(_imageView, self.frame.size.height/2.0, 1, [UIColor whiteColor]);
    
}

@end
