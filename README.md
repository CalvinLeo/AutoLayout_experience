# AutoLayout使用心得

>背景：在个人、团队规模较小的某些项目中，有时候为了快速的开发出一个页面，我们会考虑使用 xib 文件来布局视图。这种方式确实会让视图很快的生成，同时在使用的过程中，会有些问题。这篇是我个人在使用的过程中遇到的困惑的解决心得。

[StackView的使用](STACKVIEW.md)

#### 示例图

<div align=center><img width= "375" height= "586" src="https://github.com/CalvinLeo/AutoLayout_experience/blob/master/Image/image1.png"/></div>

#### 布局设计

* xib 文件是一个视图，内容视图有一个头像img，姓名label，同时会有两个内容高度变化的文本框，最下方还有一个展示小图的区域。

* 不主要的控件这里就先不展示了，主要的问题就是，父视图根据两个可变文本框的高度变化而变化。

**注意点**

* 在布局的过程中一定要将纵轴方向上的布局设置完整才可以达到效果，不然会有问题！！！同理在UITableViewCell自动计算内容行高时，也参照这条准则！非常实用。

* 可变label的 numberOfLines 设置为 0，高度设置 >=。

* 在设置了主标题内容和副文本内容的视图后，更新父视图高度的方法：updateContentHeight（）中需要设置一下label.preferredMaxLayoutWidth 如果不设置视图的高度会变成 xib 文件的高度。完成后调用自身的 systemLayoutSizeFitting（）方法获取自己内容的高度。最后再把自己高度赋值即可。

#### 总结

一直以来我自己的疑问就是内容视图高度的变化如何影响父视图的高度，找了一些资料后才找到这种方式解决， systemLayoutSizeFitting（）这个方法真的很巧妙。
