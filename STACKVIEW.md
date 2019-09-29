## StackView 理解

StoryBoard、xib 文件中直接拖拽 UIStackView，UIStackView可以设置四个属性:

* Axis
* Distribution
* Spacing
* Alignment

```
// 排列类型
[stackView setAxis:UILayoutConstraintAxisHorizontal];
// 子控件大小一样
[stackView setDistribution:UIStackViewDistributionFillEqually];
// 子控件间距
[stackView setSpacing:20];
// 底部对其
[stackView setAlignment:UIStackViewAlignmentBottom];
```

StackView 添加视图的方法与 UIView 添加视图的方法有所区别：

```
// 加入视图
addArrangedSubview()
// 移除视图
removeArrangedSubview()
```

视图加入 UIStackView 设置 UIStackView 的相关属性，UIStackView 会自动将视图布局出来，非常方便