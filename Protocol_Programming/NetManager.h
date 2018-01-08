//
//  NetManager.h
//  ProtocolProgrammingDemo
//
//  Created by JUMPING on 16/12/20.
//  Copyright © 2016年 JUMPING. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetManager : NSObject

+ (instancetype)sharedNetManager;

- (void)requestGetNetWithUrl:(NSURL *)url Param:(NSDictionary *)param;
- (void)requestPostNetWithUrl:(NSURL *)url Param:(NSDictionary *)param;
@end
