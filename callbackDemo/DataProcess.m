//
//  DataProcess.m
//  callbackDemo
//
//  Created by shen on 15/12/3.
//  Copyright © 2015年 shen. All rights reserved.
//

#import "DataProcess.h"

@implementation DataProcess


-(void)processWithStr:(NSString *)str{
    //方法1delegate回调
    [self.delegate callBackWithStr:@"process finish!!---by delegate"];
    
    //方法2block变量回调
    if (self.dataBlock) {
        self.dataBlock(@"process finish!!---by var block");
    }
    
}

//方法3，将block嵌入函数
-(void)processWithStr:(NSString *)str withCallBackBlock:(DataBlock)myDataBlock{
    myDataBlock(@"process finish!!---by inside block");
}

@end
