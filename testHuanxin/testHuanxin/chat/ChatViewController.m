//
//  ChatViewController.m
//  testHuanxin
//
//  Created by WoodGao on 15/12/31.
//  Copyright © 2015年 wood. All rights reserved.
//

#import "ChatViewController.h"
#import <EaseEmotionManager.h>
#import <EaseEmoji.h>

@interface ChatViewController ()

@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    EaseEmotionManager *manager= [[EaseEmotionManager alloc] initWithType:EMEmotionDefault emotionRow:3 emotionCol:7 emotions:[EaseEmoji allEmoji]];
    [self.faceView setEmotionManagers:@[manager]];
    
    //通过会话管理者获取已收发消息
    [self tableViewDidTriggerHeaderRefresh];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
