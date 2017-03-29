//
//  CircleView.m
//  SimpleWayDrawaCircle
//
//  Created by WUYUEZONG on 2017/3/29.
//  Copyright © 2017年 WUYUEZONG. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    
    CGFloat viewHalfWidth = rect.size.width/2.0;
    
    CGFloat lineWidth = viewHalfWidth;
    
    
    /// 画笔宽度 = 整个大圆半径 - 内圆半径 （即，颜色区域）
    lineWidth = viewHalfWidth - _insideCircleWidth;
    
    
    
    CGFloat circleRadius = viewHalfWidth - lineWidth/2;
    
    CGPoint circleCenterPoint = CGPointMake(viewHalfWidth, viewHalfWidth);
    
    /// 取得上下文（画布）
    CGContextRef pieViewContext = UIGraphicsGetCurrentContext();
    /// 起始角度
    CGFloat startAngel = 0;
    /// 终止角度
    CGFloat endAngel;
    
    for (int i =0; i < _colorsArray.count; i++) {
        /// 终止角度 = 开始角度 + 数据所占扇形比例*2Pi
        endAngel = startAngel + M_PI*2*_datasArray[i].doubleValue;
        
        /// 根据 圆心、半径、起始角度、终止角度、是否顺时针（画圆方向）
        CGContextAddArc(pieViewContext, circleCenterPoint.x, circleCenterPoint.y, circleRadius, startAngel, endAngel, NO);
        /// 涂抹颜色
        CGContextSetStrokeColorWithColor(pieViewContext, _colorsArray[i].CGColor);
        /// 画笔宽
        CGContextSetLineWidth(pieViewContext, lineWidth);
        /// 绘制
        CGContextStrokePath(pieViewContext);
        
        /// 下一个起始角度 = 但前终止角度
        startAngel = endAngel;
        
    }
}

@end
