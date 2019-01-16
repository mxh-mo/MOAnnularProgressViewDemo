# MOAnnularProgressViewDemo
```Objective-C
self.progressView = [[WWTKCycleProgressView alloc] init];
self.progressView.backgroundColor = [UIColor colorWithRGB:0x97FB90];
self.progressView.frontColor = [UIColor colorWithRGB:0x0FC5B1];
self.progressView.lineWidth = 4.0f;
self.progressView.alpha = 0.5;
[self addSubview:self.progressView];
[self.progressView mas_makeConstraints:^(MASConstraintMaker *make) {
  make.edges.equalTo(self).with.insets(UIEdgeInsetsZero);
}];

self.progressView.progress = 0.5;

```