//
//  UIView+ZSXBadge.h
//  ZSXBadgeDemo
//
//  Created by 郑胜昔 on 2019/5/20.
//  Copyright © 2019 郑胜昔. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZSXBadgeProlocol <NSObject>

typedef NS_ENUM(NSInteger, ZSXBadgeType) {//二维码类型
    ZSXBadgeTypeRedDot                    =0,//红点
    ZSXBadgeTypeNumber,                      //数字
    ZSXBadgeTypeText,                        //文本
};

@optional
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
@property (nonatomic, assign) ZSXBadgeType zsx_badgeType;

/**
 显示角标
 */
-(void)zsx_showBadge;

/**
 显示数字类型角标

 @param badgeNumber 角标值
 */
-(void)zsx_showNumberBadgeWithBadgeNumber:(NSInteger)badgeNumber;

/**
 显示文本类型角标

 @param text 文本内容
 */
-(void)zsx_showTextBadgeWithText:(NSString *)text;

/**
 清除角标
 */
-(void)zsx_clearBadge;

@end

NS_ASSUME_NONNULL_BEGIN

@interface UIView (ZSXBadge) <ZSXBadgeProlocol>

@end

NS_ASSUME_NONNULL_END
