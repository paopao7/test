//
//  ViewController.m
//  步进器和分栏控件
//
//  Created by 钱超 on 16/4/9.
//  Copyright © 2016年 钱超. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


@synthesize stepper = _stepper;
@synthesize segControl = _segControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //创建步进器对象
    _stepper = [[UIStepper alloc] init];
    
    
    //位置设置，宽高不可修改
    _stepper.frame = CGRectMake(100, 100, 80, 40);
    
    //设置步进器的最小值
    _stepper.minimumValue = 0;
    
    //设置步进器的最大值
    _stepper.maximumValue = 100;
    
    //设置步进器的默认值
    _stepper.value = 10;
    
    //设置步进值，每次向前或向后步伐值
    _stepper.stepValue = 1;
    
    //是否可以重复响应事件 按住时会自动变化
    _stepper.autorepeat = YES;
    
    //是否将步进结构通过事件函数响应出来 autorepeat为yes的时候 才起作用
    //YES 按住时也会调用对应函数
    //NO 按住时不会调用对应函数
    _stepper.continuous = YES;
    
    
    //添加事件函数
    //1:函数实现体
    //2:函数体
    //3:事件值改变状态
    [_stepper addTarget:self action:@selector(stepChange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_stepper];
    
    
    
    
    //创建分栏控件
    _segControl = [[UISegmentedControl alloc] init];
    
    
    //设置控件的位置 宽度可变 高度不可变
    _segControl.frame = CGRectMake(10, 200, 300, 40);
    
    
    //添加一个按钮元素
    [_segControl insertSegmentWithTitle:@"0元" atIndex:0 animated:NO];
    
    //参数一：按钮选项文字
    //参数二：按钮的索引位置 索引相同的话，后加入的会跑到先加入的前面
    //参数三：是否有插入的动画效果
    [_segControl insertSegmentWithTitle:@"5元" atIndex:1 animated:NO];
    
    [_segControl insertSegmentWithTitle:@"10元" atIndex:2 animated:NO];
    
    //当前默认按钮索引设置
    _segControl.selectedSegmentIndex = 0;
    
    
    [_segControl addTarget:self action:@selector(setChange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_segControl];
}


- (void)stepChange{
    NSLog(@"step press! value=%f",_stepper.value);
}


-  (void)setChange{
    NSLog(@"%ld",_segControl.selectedSegmentIndex);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
