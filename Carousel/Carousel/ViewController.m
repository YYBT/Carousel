//
//  ViewController.m
//  Carousel
//
//  Created by yaoyaodu on 2017/6/12.
//  Copyright © 2017年 yaoyaodu. All rights reserved.
//

#import "ViewController.h"
#import "CircleHomeHeadView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CircleHomeHeadView *headView = [[CircleHomeHeadView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, (186*ScreenWidth)/375)];
    headView.delegate = self;
    
    [self.view addSubview:headView];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
