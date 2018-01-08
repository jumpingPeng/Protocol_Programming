//
//  NetManager.m
//  ProtocolProgrammingDemo
//
//  Created by JUMPING on 16/12/20.
//  Copyright © 2016年 JUMPING. All rights reserved.
//

#import "NetManager.h"
#import "ApiServicePassthrough.h"
#import "GetApiService.h"
#import "PostApiService.h"

@implementation NetManager

static id _instance;

+ (instancetype)sharedNetManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

- (void)requestGetNetWithUrl:(NSURL *)url Param:(NSDictionary *)param {
    id<ApiService> apiSrevice = [GetApiService new];
    ApiServicePassthrough *apiServicePassthrough = [[ApiServicePassthrough alloc] initWithApiService:apiSrevice];
    apiServicePassthrough.url = url;
    apiServicePassthrough.param = param;
    [apiServicePassthrough execNetRequest];
}

- (void)requestPostNetWithUrl:(NSURL *)url Param:(NSDictionary *)param {
    id<ApiService> apiSrevice = [PostApiService new];
    ApiServicePassthrough *apiServicePassthrough = [[ApiServicePassthrough alloc] initWithApiService:apiSrevice];
    apiServicePassthrough.url = url;
    apiServicePassthrough.param = param;
    [apiServicePassthrough execNetRequest];
}


@end
