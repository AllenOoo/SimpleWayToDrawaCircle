//
//  ViewController.m
//  SimpleWayDrawaCircle
//
//  Created by WUYUEZONG on 2017/3/29.
//  Copyright © 2017年 WUYUEZONG. All rights reserved.
//

#import "ViewController.h"
#import "CircleView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CircleView *circleView = [[CircleView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    circleView.center = self.view.center;
    circleView.colorsArray = [NSArray arrayWithObjects:[UIColor redColor],  [UIColor orangeColor], [UIColor brownColor], [UIColor cyanColor],[UIColor blackColor],[UIColor blueColor], nil];
    
    circleView.datasArray = [NSArray arrayWithObjects:@(.15), @(.05), @(.25), @(.25),@(.295),@(.005), nil];
    circleView.insideCircleWidth = 50;
    [self.view addSubview:circleView];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
