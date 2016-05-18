//
//  ViewController.m
//  PLPlayerTrainingDemo
//
//  Created by TaoZeyu on 16/5/18.
//  Copyright © 2016年 taozeyu. All rights reserved.
//

#import "ViewController.h"
#import <PLPlayerKit/PLPlayer.h>

@interface ViewController () <PLPlayerDelegate>
@property (nonatomic, strong) PLPlayer *player;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PLPlayerOption *option = [PLPlayerOption defaultOption];
    
    NSURL *url = [NSURL URLWithString:@"rtmp://pili-live-rtmp.pilitest.qiniucdn.com/pilitest/solution1"];
    self.player = [PLPlayer playerWithURL:url option:option];
    self.player.delegate = self;
    
    [self.view addSubview:self.player.playerView];
    
    [self.player play];
}

@end
