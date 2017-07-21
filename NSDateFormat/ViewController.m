//
//  ViewController.m
//  NSDateFormat
//
//  Created by 连喜 邓 on 2017/7/21.
//  Copyright © 2017年 连喜 邓. All rights reserved.
//

#import "ViewController.h"
#import "SYKFDateUitilDefine.h"
#import "SYKFDateUitil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *dateString =@"2017-06-25 10:12:18";
    NSDate *getDate =SYKFDateTimeFromString(dateString);
    NSLog(@"转日期后月份是：%ld,日期与今天相差天数：%ld；",SYKFDateGetMonth(getDate),SYKFDateDaysAgo(getDate));
    
    NSDate *todayDate =[NSDate new];
    NSLog(@"今天所属星座：%@,今天是星期：%ld",SYKFDateToConstellation(todayDate),SYKFDateGetWeekDay(todayDate));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
