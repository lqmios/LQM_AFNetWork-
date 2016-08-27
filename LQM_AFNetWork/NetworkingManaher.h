//
//  NetworkingManaher.h
//  LQM_AFNetWork
//
//  Created by lqm on 16/8/26.
//  Copyright © 2016年 LQM. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SuccessHandler)(id responseObj);
typedef void(^FailureHandler) (NSError * error);

@interface NetworkingManaher : NSObject

+ (void)postWithUrl:(NSString *)url params:(id)params successHandler:(void(^)(id respinseObject))success failureHandler:(void(^)(NSError * error))failure;


@end
