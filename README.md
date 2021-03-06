# ZSXBadge

[![CI Status](https://img.shields.io/travis/314334043@qq.com/ZSXBadge.svg?style=flat)](https://travis-ci.org/314334043@qq.com/ZSXBadge)
[![Version](https://img.shields.io/cocoapods/v/ZSXBadge.svg?style=flat)](https://cocoapods.org/pods/ZSXBadge)
[![License](https://img.shields.io/cocoapods/l/ZSXBadge.svg?style=flat)](https://cocoapods.org/pods/ZSXBadge)
[![Platform](https://img.shields.io/cocoapods/p/ZSXBadge.svg?style=flat)](https://cocoapods.org/pods/ZSXBadge)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## 介绍
一款支持UIView和UIBarButtonItem的角标组件，包括红点、数字、文本，以及丰富的自定义样式参数

## Installation

ZSXBadge is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ZSXBadge'
```

## 使用
```ruby
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *v1 = [[UIView alloc]initWithFrame:CGRectMake(0, 100, 80, 80)];
    v1.center = CGPointMake(self.view.center.x, v1.center.y);
    v1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:v1];
    
    UIView *v2 = [[UIView alloc]initWithFrame:CGRectMake(0, 250, 80, 80)];
    v2.center = CGPointMake(self.view.center.x, v2.center.y);
    v2.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:v2];
    
    UIView *v3 = [[UIView alloc]initWithFrame:CGRectMake(0, 400, 80, 80)];
    v3.center = CGPointMake(self.view.center.x, v3.center.y);
    v3.backgroundColor = [UIColor grayColor];
    [self.view addSubview:v3];
    
    //红点
    [v1 zsx_showBadge];
    
    //数字
    [v2 zsx_showNumberBadgeWithBadgeNumber:20];
    
    //文本
    [v3 zsx_showTextBadgeWithText:@"New"];
}
```

## 自定义参数
```ruby
@property (nonatomic, strong) UILabel *zsx_badge;
@property (nonatomic, assign) NSInteger zsx_badgeNumber;
@property (nonatomic, assign) NSInteger zsx_badgeMaxNumber;
@property (nonatomic, copy) NSString *zsx_badgeValue;
@property (nonatomic, strong) UIColor *zsx_badgebackgroundColor;
@property (nonatomic, strong) UIColor *zsx_badgeTextColor;
@property (nonatomic, assign) CGFloat zsx_badgeTextFontSize;
@property (nonatomic, strong) UIFont *zsx_badgeTextFont;
@property (nonatomic, assign) CGFloat zsx_badgeBorderWidth;
@property (nonatomic, strong) UIColor *zsx_badgeBorderColor;
@property (nonatomic, assign) CGFloat zsx_badgeRedDotSize;
@property (nonatomic, assign) CGPoint zsx_badgeOffset;
```

## 效果图
![效果图](https://s3.ax1x.com/2020/11/13/DS340K.png)


## Author

314334043@qq.com, “314334043@qq.com”

## License

ZSXBadge is available under the MIT license. See the LICENSE file for more info.
