//
//  ApiServicePassthrough.m
//  ProtocolProgrammingDemo
//
//  Created by JUMPING on 16/12/20.
//  Copyright © 2016年 JUMPING. All rights reserved.
//

#import "ApiServicePassthrough.h"

@interface ApiServicePassthrough ()

@property (nonatomic, strong) id<ApiService> apiService;

@end

@implementation ApiServicePassthrough

- (instancetype)initWithApiService:(id<ApiService>)apiService {
    if (self = [super init]) {
        self.apiService = apiService;
    }
    return self;
}

- (void)execNetRequest {
    [self.apiService requestNetWithUrl:self.url Param:self.param];
}

@end
