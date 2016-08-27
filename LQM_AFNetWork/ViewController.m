//
//  ViewController.m
//  LQM_AFNetWork
//
//  Created by lqm on 16/8/26.
//  Copyright © 2016年 LQM. All rights reserved.
//

#import "ViewController.h"
#import "AFnetworking.h"
#import "HttpDownLoadManager.h"
#import "NetworkingManaher+Course.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     ios9 网络请求要在Info.plist配置以下代码
     <key>NSAppTransportSecurity</key>
     <dict>
     <key>NSAllowsArbitraryLoads</key>
     <true/>
     </dict>
     */



    [self getLoadata1];
    [self postAndGetLoadData1];
    [self postLoadData2];
    

}

-(void)getLoadata1
{
    
    AFnetworking *afnetWork = [[AFnetworking alloc]init];
    [afnetWork getDataRequesetWithUrl:@"http://120.24.75.234:7080/API/1.0/Json/Liuqi/Hema_NewHome" WithParmeters:nil];
    [afnetWork setBlock:^(id info){
        //        NSDictionary *dic = info[@"Body"];
        NSLog(@"info = %@",info);
        
    }];

}

-(void)postAndGetLoadData1
{
    HttpDownLoadManager *manager = [HttpDownLoadManager SharedManager];
    
    
//    NSString *getStrUrl = @"http://gateway.lincovip.com/api/JPushNotifications?studentId=965b040e-8a70-44d2-a1c2-6066fc258e08";

    NSString *strUrl = @"http://1.tiantianmeisi.applinzi.com/index.php/Home/index/getdayfoodrecommend";
    
    [manager Get:strUrl success:^(id data) {
        
        NSLog(@"~~~data~~%@",data);
    } failure:^(NSError *error) {
        
    }];
    
    NSString *keyWord = @"lqm";
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    NSString *keywords = [keyWord stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    params[@"Keyword"] = keywords;
    
    [manager Post:strUrl parameters:params success:^(id data) {
//        NSLog(@"~~~data~~%@",data);
    } failure:^(NSError *error) {
//        NSLog(@"~~~error~~%@",error);
    }];
    

}
-(void)postLoadData2
{
    [NetworkingManaher couseCampusSuccesHandler:^(id responseObj) {
        
//        NSLog(@"responseObj =---= %@",responseObj);
        
    } failulreHandler:^(NSError *error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
