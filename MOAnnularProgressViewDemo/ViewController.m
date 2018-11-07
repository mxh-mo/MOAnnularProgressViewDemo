//
//  ViewController.m
//  MOAnnularProgressViewDemo
//
//  Created by 莫晓卉 on 2018/4/25.
//  Copyright © 2018年 莫晓卉. All rights reserved.
//

#import "ViewController.h"
#import "MOAnnularProgressView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  MOAnnularProgressView *progressView = [[MOAnnularProgressView alloc] initWithFrame:CGRectMake(50, 100, 100, 100)];
  progressView.progress = 0.5f;
  progressView.backgroundColor = [UIColor yellowColor];
  progressView.frontColor = [UIColor redColor];
  progressView.lineWidth = 10;
  [self.view addSubview:progressView];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
