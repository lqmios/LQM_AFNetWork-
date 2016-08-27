//
//  NetworkingManaher+Course.m
//  LQM_AFNetWork
//
//  Created by lqm on 16/8/26.
//  Copyright © 2016年 LQM. All rights reserved.
//

#import "NetworkingManaher+Course.h"

@implementation NetworkingManaher (Course)

+ (void)couseCampusSuccesHandler:(SuccessHandler)success failulreHandler:(FailureHandler)failure{
    
    NSString * url = @"http://1.tiantianmeisi.applinzi.com/index.php/Home/index/getdayfoodrecommend";
  
    NSString *keyWord = @"lqm";
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    NSString *keywords = [keyWord stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    params[@"Keyword"] = keywords;
    
    
//    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
//    NSString * open_id = [defaults objectForKey:@"openKey"];
//    NSString * token_id = [defaults objectForKey:@"tokenKey"];
//    
//    //参数字典
//    NSDictionary * params = @{
//                              @"open_id":open_id,
//                              @"token_id":token_id,
//                              @"eCode":@""
//                              };

    [self postWithUrl:url params:params successHandler:success failureHandler:failure];
    
    
    
}


@end
