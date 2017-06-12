//
//  CircleHomeHeadView.m
//  TopAnchor
//
//  Created by yaoyaodu on 2017/5/26.
//  Copyright © 2017年 TopAnchor. All rights reserved.
//

#import "CircleHomeHeadView.h"

@implementation CircleHomeHeadView


#define YYX(x) x*ScreenWidth/375.0
#define YYDuration 0.5
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.clipsToBounds = YES;
        [self loadView];
    }
    return self;
}
- (void)loadView{
   
   
    
    
 
    self.frameArray = [NSMutableArray arrayWithObjects:
                       [NSValue valueWithCGRect:CGRectMake(YYX(19), YYX(142), YYX(63), YYX(63))],
                       [NSValue valueWithCGRect:CGRectMake(YYX(152), YYX(116), YYX(63), YYX(63))],
                       [NSValue valueWithCGRect:CGRectMake(YYX(258), YYX(98), YYX(63), YYX(63))],
                       [NSValue valueWithCGRect:CGRectMake(YYX(227), YYX(65), YYX(63), YYX(63))],
                       [NSValue valueWithCGRect:CGRectMake(YYX(75), YYX(94), YYX(63), YYX(63))], nil];
    
    CGPoint view1point = CGPointMake(YYX(50.5), YYX(173.5));
    CGPoint view2point = CGPointMake(YYX(183.5), YYX(147.5));
    CGPoint view3point = CGPointMake(YYX(289.5), YYX(129.5));
    CGPoint view4point = CGPointMake(YYX(258.5), YYX(96.5));
    CGPoint view5point = CGPointMake(YYX(106.5), YYX(125.5));
    
    self.pointArray = [NSMutableArray arrayWithObjects:
                       @[   [NSValue valueWithCGPoint:view1point],
                            [NSValue valueWithCGPoint:CGPointMake(YYX(21), YYX(161))],
                            [NSValue valueWithCGPoint:CGPointMake(YYX(33), YYX(147))],
                            [NSValue valueWithCGPoint:view5point]
                            ],
                       @[   [NSValue valueWithCGPoint:view2point],
                            [NSValue valueWithCGPoint:CGPointMake(YYX(134), YYX(164))],
                            [NSValue valueWithCGPoint:CGPointMake(YYX(100), YYX(167))],
                            [NSValue valueWithCGPoint:view1point]
                            ],
                       @[   [NSValue valueWithCGPoint:view3point],
                            [NSValue valueWithCGPoint:CGPointMake(YYX(244), YYX(147))],
                            [NSValue valueWithCGPoint:view2point]
                            ],
                       @[   [NSValue valueWithCGPoint:view4point],
                            [NSValue valueWithCGPoint:CGPointMake(YYX(307), YYX(94))],
                            [NSValue valueWithCGPoint:CGPointMake(YYX(343), YYX(96))],
                            [NSValue valueWithCGPoint:CGPointMake(YYX(359), YYX(102))],
                            [NSValue valueWithCGPoint:CGPointMake(YYX(339), YYX(117))],
                            [NSValue valueWithCGPoint:view3point],
                            ],
                       @[   [NSValue valueWithCGPoint:view5point],
                            [NSValue valueWithCGPoint:CGPointMake(YYX(172), YYX(109))],
                            [NSValue valueWithCGPoint:view4point]
                            ],
                       nil];
    
    self.scaleArray = [NSMutableArray arrayWithObjects:
                       @0.5,
                       @0.7,
                       @0.95,
                       @0.6,
                       @0.4,
                       nil];
    

    
    UIImageView *imageView  = [[UIImageView alloc]initWithFrame:CGRectMake(0, -64, ScreenWidth, (250*ScreenWidth)/375)];
    imageView.image = [UIImage imageNamed:@"mycircleheadbg"];
    [self addSubview:imageView];
    
    headImageView = [[CircleHomeHeadImageView alloc]initWithFrame:[self.frameArray[0] CGRectValue]];
    headImageView.label.text = @"1111";
    [imageView addSubview:headImageView];
//    headImageView.transform = CGAffineTransformMakeScale(0.8,0.8);
    
    CABasicAnimation *a1 = [CABasicAnimation animation];
    a1.keyPath = @"transform.scale";
    a1.toValue = self.scaleArray[1];
    a1.duration = 0.3f;
    a1.removedOnCompletion = NO;
    a1.fillMode = kCAFillModeForwards;
    [headImageView.layer addAnimation:a1 forKey:@"a1"];
    
    
    headImageView1 = [[CircleHomeHeadImageView alloc]initWithFrame:[self.frameArray[1] CGRectValue]];
    [imageView addSubview:headImageView1];
//    headImageView1.transform = CGAffineTransformMakeScale(1,1);
    CABasicAnimation *a2 = [CABasicAnimation animation];
    a2.keyPath = @"transform.scale";
    a2.toValue = self.scaleArray[2];
    a2.duration = 0.3f;
    a2.removedOnCompletion = NO;
    a2.fillMode = kCAFillModeForwards;
    [headImageView1.layer addAnimation:a2 forKey:@"a2"];
    
    headImageView2 = [[CircleHomeHeadImageView alloc]initWithFrame:[self.frameArray[2] CGRectValue]];
    [imageView addSubview:headImageView2];
//    headImageView2.transform = CGAffineTransformMakeScale(0.7,0.7);
    CABasicAnimation *a3 = [CABasicAnimation animation];
    a3.keyPath = @"transform.scale";
    a3.toValue = self.scaleArray[3];
    a3.duration = 0.3f;
    a3.removedOnCompletion = NO;
    a3.fillMode = kCAFillModeForwards;
    [headImageView2.layer addAnimation:a3 forKey:@"a3"];
    
    headImageView3 = [[CircleHomeHeadImageView alloc]initWithFrame:[self.frameArray[3] CGRectValue]];
    [imageView addSubview:headImageView3];
//    headImageView3.transform = CGAffineTransformMakeScale(0.5,0.5);
    CABasicAnimation *a4 = [CABasicAnimation animation];
    a4.keyPath = @"transform.scale";
    a4.toValue = self.scaleArray[4];
    a4.duration = 0.3f;
    a4.removedOnCompletion = NO;
    a4.fillMode = kCAFillModeForwards;
    [headImageView3.layer addAnimation:a4 forKey:@"a4"];
    
    headImageView4 = [[CircleHomeHeadImageView alloc]initWithFrame:[self.frameArray[4] CGRectValue]];
    [imageView addSubview:headImageView4];
//    headImageView4.transform = CGAffineTransformMakeScale(0.6,0.6);
    CABasicAnimation *a5 = [CABasicAnimation animation];
    a5.keyPath = @"transform.scale";
    a5.toValue = self.scaleArray[0];
    a5.duration = 0.3f;
    a5.removedOnCompletion = NO;
    a5.fillMode = kCAFillModeForwards;
    [headImageView4.layer addAnimation:a5 forKey:@"a5"];
    
    headImageView.label.text = @"阿什利额外积分";
    headImageView1.label.text = @"暗示法挖发送到发送到";
    headImageView2.label.text = @"暗示法挖发送到";
    headImageView3.label.text = @"阿萨德融入";
    headImageView4.label.text = @"阿尔法法尔发动";
    
    self.array = [NSMutableArray arrayWithObjects:headImageView,headImageView1,headImageView2,headImageView3,headImageView4, nil];

    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    pan.delegate = self;
    [self addGestureRecognizer:pan];
    
    UISwipeGestureRecognizer *recognizer;
    
    imageView.userInteractionEnabled = YES;
    
    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    recognizer.delegate = self;
    [recognizer setDirection:(UISwipeGestureRecognizerDirectionRight)];
    
    [self addGestureRecognizer:recognizer];
    [pan requireGestureRecognizerToFail:recognizer];
    
    recognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(handleSwipeFrom:)];
    recognizer.delegate = self;
    [recognizer setDirection:(UISwipeGestureRecognizerDirectionLeft)];
    
    [self addGestureRecognizer:recognizer];
    [pan requireGestureRecognizerToFail:recognizer];

    
    

}
- (void)handlePan:(UIPanGestureRecognizer *)pan
{}

-(void)handleSwipeFrom:(UISwipeGestureRecognizer *)recognizer{
    
    //如果往左滑
    
    if(recognizer.direction==UISwipeGestureRecognizerDirectionLeft) {
        self.scaleArray = [NSMutableArray arrayWithObjects:
                           @0.5,
                           @0.7,
                           @0.95,
                           @0.6,
                           @0.4,
                           nil];
        
        CircleHomeHeadImageView *tempview =  self.array[0];
        
        int i;
        for (i=0; i<self.array.count-1; i++) {
            self.array[i] =  self.array[i+1];
            
            CircleHomeHeadImageView *view = self.array[i];
  
            
            //1.创建核心动画
            CAKeyframeAnimation *keyAnima=[CAKeyframeAnimation animation];
            //平移
            keyAnima.keyPath=@"position";
            
            keyAnima.values= self.pointArray[i+1];
            //1.2设置动画执行完毕后，不删除动画
            keyAnima.removedOnCompletion=NO;
            //1.3设置保存动画的最新状态
            keyAnima.fillMode=kCAFillModeForwards;
            //1.4设置动画执行的时间
            keyAnima.duration=YYDuration;
            //1.5设置动画的节奏
            keyAnima.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            
            CABasicAnimation *a2 = [CABasicAnimation animation];
            a2.keyPath = @"transform.scale";
            a2.toValue = self.scaleArray[i+1];

            
            // 组动画
            CAAnimationGroup *groupAnima = [CAAnimationGroup animation];
            
            groupAnima.animations = @[keyAnima, a2];
            
            //设置组动画的时间
            groupAnima.duration = YYDuration;
            groupAnima.fillMode = kCAFillModeForwards;
            groupAnima.removedOnCompletion = NO;
            
            [view.layer addAnimation:groupAnima forKey:nil];
            
            
            
        }
        self.array[i] = tempview;
        
        //1.创建核心动画
        CAKeyframeAnimation *keyAnima=[CAKeyframeAnimation animation];
        //平移
        keyAnima.keyPath=@"position";

        keyAnima.values= self.pointArray[0];
        //1.2设置动画执行完毕后，不删除动画
        keyAnima.removedOnCompletion=NO;
        //1.3设置保存动画的最新状态
        keyAnima.fillMode=kCAFillModeForwards;
        //1.4设置动画执行的时间
        keyAnima.duration=YYDuration;
        //1.5设置动画的节奏
        keyAnima.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        
        CABasicAnimation *a2 = [CABasicAnimation animation];
        a2.keyPath = @"transform.scale";
        a2.toValue = self.scaleArray[0];
        
        // 组动画
        CAAnimationGroup *groupAnima = [CAAnimationGroup animation];
        
        groupAnima.animations = @[keyAnima, a2];
        
        //设置组动画的时间
        groupAnima.duration = YYDuration;
        groupAnima.fillMode = kCAFillModeForwards;
        groupAnima.removedOnCompletion = NO;
        
        [tempview.layer addAnimation:groupAnima forKey:nil];

        
    }
    
    //如果往右滑
    
    if(recognizer.direction==UISwipeGestureRecognizerDirectionRight) {
        self.scaleArray = [NSMutableArray arrayWithObjects:
                           @0.7,
                           @0.95,
                           @0.6,
                           @0.4,
                           @0.5,
                           
                           nil];
        CircleHomeHeadImageView *tempview =  self.array[self.array.count-1];
        
        NSInteger i;
        for (i=self.array.count-1; i>0; i--) {
            self.array[i] =  self.array[i-1];
            
            CircleHomeHeadImageView *view = self.array[i];
            
            //1.创建核心动画
            CAKeyframeAnimation *keyAnima=[CAKeyframeAnimation animation];
            //平移
            keyAnima.keyPath=@"position";
            
            keyAnima.values=  [[self.pointArray[i] reverseObjectEnumerator] allObjects];
            //1.2设置动画执行完毕后，不删除动画
            keyAnima.removedOnCompletion=NO;
            //1.3设置保存动画的最新状态
            keyAnima.fillMode=kCAFillModeForwards;
            //1.4设置动画执行的时间
            keyAnima.duration=YYDuration;
            //1.5设置动画的节奏
            keyAnima.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            
            CABasicAnimation *a2 = [CABasicAnimation animation];
            a2.keyPath = @"transform.scale";
            a2.toValue = self.scaleArray[i];
            
            
            // 组动画
            CAAnimationGroup *groupAnima = [CAAnimationGroup animation];
            
            groupAnima.animations = @[keyAnima, a2];
            
            //设置组动画的时间
            groupAnima.duration = YYDuration;
            groupAnima.fillMode = kCAFillModeForwards;
            groupAnima.removedOnCompletion = NO;
            
            [view.layer addAnimation:groupAnima forKey:nil];

            
        }
        self.array[i] = tempview;
        NSLog(@"%@",tempview.label.text);
      
        //1.创建核心动画
        CAKeyframeAnimation *keyAnima=[CAKeyframeAnimation animation];
        //平移
        keyAnima.keyPath=@"position";
        
        keyAnima.values=  [[self.pointArray[0] reverseObjectEnumerator] allObjects];
        //1.2设置动画执行完毕后，不删除动画
        keyAnima.removedOnCompletion=NO;
        //1.3设置保存动画的最新状态
        keyAnima.fillMode=kCAFillModeForwards;
        //1.4设置动画执行的时间
        keyAnima.duration=YYDuration;
        //1.5设置动画的节奏
        keyAnima.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        
        CABasicAnimation *a2 = [CABasicAnimation animation];
        a2.keyPath = @"transform.scale";
        a2.toValue = self.scaleArray[0];
        
        
        // 组动画
        CAAnimationGroup *groupAnima = [CAAnimationGroup animation];
        
        groupAnima.animations = @[keyAnima, a2];
        
        //设置组动画的时间
        groupAnima.duration = YYDuration;
        groupAnima.fillMode = kCAFillModeForwards;
        groupAnima.removedOnCompletion = NO;
        
        [tempview.layer addAnimation:groupAnima forKey:nil];

    }
    
}
@end
