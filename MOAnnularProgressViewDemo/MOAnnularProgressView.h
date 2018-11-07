//
//  MOAnnularProgressView.h
//  MOAnnularProgressViewDemo
//
//  Created by 莫晓卉 on 2018/4/25.
//  Copyright © 2018年 莫晓卉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MOAnnularProgressView : UIView

@property (nonatomic, strong) UIColor *backgroundColor; // 环的背景色
@property (nonatomic, strong) UIColor *frontColor;    // 环的进度填充色
@property (nonatomic, assign) CGFloat lineWidth;  // 环宽
@property (nonatomic, assign) CGFloat progress;   // 进度 0 ~ 1

@end
