//
//  AFnetworking.h
//  LQM_AFNetWork
//
//  Created by lqm on 16/8/26.
//  Copyright © 2016年 LQM. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^AFNetWorkBlock)(id info);
@interface AFnetworking : NSObject
@property(nonatomic,copy)AFNetWorkBlock block;

-(void)getDataRequesetWithUrl:(NSString *)urlString WithParmeters:(NSDictionary *)dictionary;
@end
