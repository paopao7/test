//
//  ViewController.h
//  步进器和分栏控件
//
//  Created by 钱超 on 16/4/9.
//  Copyright © 2016年 钱超. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    //定义步进器对象
    //按照一定的数值来调整某个数据
    UIStepper *_stepper;
    
    //定义分栏控制器
    UISegmentedControl *_segControl;
}

//属性的定义
@property(retain,nonatomic) UIStepper *stepper;

@property(retain,nonatomic) UISegmentedControl *segControl;

@end

