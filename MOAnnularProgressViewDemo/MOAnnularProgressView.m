//
//  MOAnnularProgressView.m
//  MOAnnularProgressViewDemo
//
//  Created by 莫晓卉 on 2018/4/25.
//  Copyright © 2018年 莫晓卉. All rights reserved.
//

#import "MOAnnularProgressView.h"

@implementation MOAnnularProgressView {
  CAShapeLayer *backgroundLayer;  // 背景图层
  CAShapeLayer *frontFillLayer;   // 填充图层
  UIBezierPath *backgroundPath;   // 背景贝赛尔曲线
  UIBezierPath *frontFillPath;    // 填充贝赛尔曲线
}

- (instancetype)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    [self setupView];
  }
  return self;
}

- (instancetype)init {
  self = [super init];
  if (self) {
    [self setupView];
  }
  return self;
}

- (void)setupView {
  backgroundLayer = [CAShapeLayer layer];
  backgroundLayer.fillColor = nil;
  [self.layer addSublayer:backgroundLayer];

  frontFillLayer = [CAShapeLayer layer];
  frontFillLayer.fillColor = nil;
  frontFillLayer.lineCap = kCALineCapRound;//指定线的边缘是圆的
  [self.layer addSublayer:frontFillLayer];
}

- (void)layoutSubviews {
  [super layoutSubviews];
  CGFloat width = self.bounds.size.width;
  backgroundLayer.frame = self.bounds;
  backgroundPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(width/2.0f, width/2.0f) radius:width/2.0f startAngle:0 endAngle:M_PI*2 clockwise:YES];
  backgroundLayer.path = backgroundPath.CGPath;
  
  frontFillLayer.frame = self.bounds;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor {
  _backgroundColor = backgroundColor;
  backgroundLayer.strokeColor = _backgroundColor.CGColor;
}

- (void)setFrontColor:(UIColor *)frontColor {
  _frontColor = frontColor;
  frontFillLayer.strokeColor = _frontColor.CGColor;
}

- (void)setLineWidth:(CGFloat)lineWidth {
  _lineWidth = lineWidth;
  backgroundLayer.lineWidth = _lineWidth;
  frontFillLayer.lineWidth = _lineWidth;
}

- (void)setProgress:(CGFloat)progress {
  _progress = MAX(MIN(progress, 1.0), 0.0);
  CGFloat width = self.bounds.size.width;
  frontFillPath = [UIBezierPath bezierPathWithArcCenter:CGPointMake(width/2.0, width/2.0) radius:width/2.0f startAngle:-0.25*2*M_PI endAngle:(2*M_PI)*_progress - 0.25*2*M_PI clockwise:YES];
  frontFillLayer.path = frontFillPath.CGPath;
}


@end
