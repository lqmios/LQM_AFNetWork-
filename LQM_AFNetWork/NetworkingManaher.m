//
//  NetworkingManaher.m
//  LQM_AFNetWork
//
//  Created by lqm on 16/8/26.
//  Copyright © 2016年 LQM. All rights reserved.
//

#import "NetworkingManaher.h"
#import "AFHTTPSessionManager.h"

#define apiIndexUrl @"https://www.baidu.com"

@implementation NetworkingManaher

+ (void)postWithUrl:(NSString *)url params:(id)params successHandler:(void(^)(id respinseObject))success failureHandler:(void(^)(NSError * error))failure
{
    
    
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    manager.responseSerializer.acceptableContentTypes  = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html",@"text/plain", nil];
    //网页拼接
//    [manager POST:[apiIndexUrl stringByAppendingString:url]
     [manager POST:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (failure) {
            failure(error);
        }
    }];
    
}

@end
