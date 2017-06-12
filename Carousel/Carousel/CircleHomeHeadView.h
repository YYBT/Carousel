//
//  CircleHomeHeadView.h
//  TopAnchor
//
//  Created by yaoyaodu on 2017/5/26.
//  Copyright © 2017年 TopAnchor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CircleHomeHeadImageView.h"

// 屏幕的宽
#define ScreenWidth                         [[UIScreen mainScreen] bounds].size.width
// 屏幕的高
#define ScreenHeight                        [[UIScreen mainScreen] bounds].size.height

@interface CircleHomeHeadView : UIView<UIGestureRecognizerDelegate>{
    CircleHomeHeadImageView *headImageView;
    
    CircleHomeHeadImageView *headImageView1;
    
    CircleHomeHeadImageView *headImageView2;
    
    CircleHomeHeadImageView *headImageView3;
    
    CircleHomeHeadImageView *headImageView4;
}
@property (nonatomic,strong)NSMutableArray *array;
@property (nonatomic,strong)NSMutableArray *frameArray;
@property (nonatomic,strong)NSMutableArray *pointArray;
@property (nonatomic,strong)NSMutableArray *scaleArray;

@property (weak, nonatomic) id delegate;
@end
