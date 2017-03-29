//
//  CircleView.h
//  SimpleWayDrawaCircle
//
//  Created by WUYUEZONG on 2017/3/29.
//  Copyright © 2017年 WUYUEZONG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleView : UIView

/// 颜色数据
@property (nonatomic, strong) NSArray<UIColor *> *colorsArray;
/// 百分比数据 总和=1
@property (nonatomic, strong) NSArray<NSNumber *> *datasArray;
/// 内圆宽度
@property (nonatomic) CGFloat insideCircleWidth;

@end
