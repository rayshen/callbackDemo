//
//  ViewController.m
//  callbackDemo
//
//  Created by shen on 15/12/3.
//  Copyright © 2015年 shen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self startProcess];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


-(void)startProcess{
    DataProcess *dataProcess=[DataProcess new];
    dataProcess.delegate=self;

    //方法2：block变量定义（直接能回调）
    dataProcess.dataBlock=^(NSString *backMsg){
        NSLog(@"收到回调2：%@",backMsg);
    };
    
    //调用方法1和2的接口
    [dataProcess processWithStr:@"command Str1"];
    
    
    //方法3：函数内嵌block回调（比较好）
    [dataProcess processWithStr:@"command Str2" withCallBackBlock:^(NSString *backMsg) {
        NSLog(@"收到回调3：%@",backMsg);
    }];
}

//方法1：delegate回调
-(void)callBackWithStr:(NSString *)str{
    NSLog(@"收到回调1：%@",str);
}



@end
