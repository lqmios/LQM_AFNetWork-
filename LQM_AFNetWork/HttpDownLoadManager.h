//
//  HttpDownLoadManager.h
//  LQM_AFNetWork
//
//  Created by lqm on 16/8/26.
//  Copyright © 2016年 LQM. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^HttpDownLoadSuccess)(id data);
typedef void (^HttpDownLoadFailure)(NSError *error);

@interface HttpDownLoadManager : NSObject<NSURLConnectionDataDelegate,NSURLConnectionDelegate>
+ (HttpDownLoadManager *)SharedManager;


-(void)Get:(NSString*)url success:(HttpDownLoadSuccess)success failure:(HttpDownLoadFailure)failure;

-(void)Post:(NSString*)url parameters:(NSDictionary*)param success:(HttpDownLoadSuccess)success failure:(HttpDownLoadFailure)failure;

@end
