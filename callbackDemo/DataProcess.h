//
//  DataProcess.h
//  callbackDemo
//
//  Created by shen on 15/12/3.
//  Copyright © 2015年 shen. All rights reserved.
//

#import <Foundation/Foundation.h>

//设置协议
@protocol callBackDelegate <NSObject>
-(void)callBackWithStr:(NSString *)str;
@end

@interface DataProcess : NSObject
//方法1
//新建delegate变量
@property id <callBackDelegate> delegate;
//delegate接口函数
-(void)processWithStr:(NSString *)str;

//方法2
//定义block
typedef void (^DataBlock)(NSString *backMsg);
//新建block变量
@property (copy) DataBlock dataBlock;
//方法3
//直接带函数内Block回调的接口函数
-(void)processWithStr:(NSString *)str withCallBackBlock:(DataBlock)myDataBlock;
@end
