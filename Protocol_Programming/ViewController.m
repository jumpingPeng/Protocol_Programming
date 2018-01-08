//
//  ViewController.m
//  ProtocolProgrammingDemo
//
//  Created by JUMPING on 16/12/20.
//  Copyright © 2016年 JUMPING. All rights reserved.
//

#import "ViewController.h"
#import "NetManager.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)onGetRequestBtnClick:(id)sender {
    [[NetManager sharedNetManager] requestGetNetWithUrl:[NSURL URLWithString:@"www.JUMPING.com"] Param:nil];
}

- (IBAction)onPostRequestBtnClick:(id)sender {
    [[NetManager sharedNetManager] requestPostNetWithUrl:[NSURL URLWithString:@"www.JUMPING.com"] Param:nil];
}

@end
