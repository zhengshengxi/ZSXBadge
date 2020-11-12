//
//  UIBarButtonItem+ZSXBadge.m
//  ZSXBadgeDemo
//
//  Created by 郑胜昔 on 2019/5/20.
//  Copyright © 2019 郑胜昔. All rights reserved.
//

#import "UIBarButtonItem+ZSXBadge.h"

@implementation UIBarButtonItem (ZSXBadge)

#pragma mark - runtime扩展属性
#pragma mark zsx_badge
-(UILabel *)zsx_badge {
    return [self getSupperView].zsx_badge;
}

-(void)setZsx_badge:(UILabel *)zsx_badge {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view setZsx_badge:zsx_badge];
    }];
}

#pragma mark zsx_badgeNumber
-(NSInteger)zsx_badgeNumber {
    return [self getSupperView].zsx_badgeNumber;
}

-(void)setZsx_badgeNumber:(NSInteger)zsx_badgeNumber {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view setZsx_badgeNumber:zsx_badgeNumber];
    }];
}

#pragma mark zsx_badgeMaxNumber
-(NSInteger)zsx_badgeMaxNumber {
    return [self getSupperView].zsx_badgeMaxNumber;
}

-(void)setZsx_badgeMaxNumber:(NSInteger)zsx_badgeMaxNumber {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view setZsx_badgeMaxNumber:zsx_badgeMaxNumber];
    }];
}

#pragma mark zsx_badgeValue
-(NSString *)zsx_badgeValue {
    return [self getSupperView].zsx_badgeValue;
}

-(void)setZsx_badgeValue:(NSString *)zsx_badgeValue {
    [[self getSupperView] setZsx_badgeValue:zsx_badgeValue];
}

#pragma mark zsx_badgeTextColor
-(UIColor *)zsx_badgeTextColor {
    return [self getSupperView].zsx_badgeTextColor;
}

-(void)setZsx_badgeTextColor:(UIColor *)zsx_badgeTextColor {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view setZsx_badgeTextColor:zsx_badgeTextColor];
    }];
}

#pragma mark zsx_badgeTextFontSize
-(CGFloat)zsx_badgeTextFontSize {
    return [self getSupperView].zsx_badgeTextFontSize;
}

-(void)setZsx_badgeTextFontSize:(CGFloat)zsx_badgeTextFontSize{
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view setZsx_badgeTextFontSize:zsx_badgeTextFontSize];
    }];
}

#pragma mark zsx_badgeTextFont
-(UIFont *)zsx_badgeTextFont {
    return [self getSupperView].zsx_badgeTextFont;
}

-(void)setZsx_badgeTextFont:(UIFont *)zsx_badgeTextFont {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view setZsx_badgeTextFont:zsx_badgeTextFont];
    }];
}

#pragma mark zsx_badgebackgroundColor
-(UIColor *)zsx_badgebackgroundColor {
    return [self getSupperView].zsx_badgebackgroundColor;
}

-(void)setZsx_badgebackgroundColor:(UIColor *)zsx_badgebackgroundColor {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view setZsx_badgebackgroundColor:zsx_badgebackgroundColor];
    }];
}

#pragma mark zsx_badgeBorderWidth
-(CGFloat)zsx_badgeBorderWidth {
    return [self getSupperView].zsx_badgeBorderWidth;
}

-(void)setZsx_badgeBorderWidth:(CGFloat)zsx_badgeBorderWidth {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view setZsx_badgeBorderWidth:zsx_badgeBorderWidth];
    }];
}

#pragma mark zsx_badgeBorderColor
-(UIColor *)zsx_badgeBorderColor {
    return [self getSupperView].zsx_badgeBorderColor;
}

-(void)setZsx_badgeBorderColor:(UIColor *)zsx_badgeBorderColor {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view setZsx_badgeBorderColor:zsx_badgeBorderColor];
    }];
}

#pragma mark zsx_badgeBorderWidth
-(CGFloat)zsx_badgeRedDotSize {
    return [self getSupperView].zsx_badgeRedDotSize;
}

-(void)setZsx_badgeRedDotSize:(CGFloat)zsx_badgeRedDotSize {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view setZsx_badgeRedDotSize:zsx_badgeRedDotSize];
    }];
}

#pragma mark zsx_badgeOffset
-(CGPoint)zsx_badgeOffset {
    return [self getSupperView].zsx_badgeOffset;
}

-(void)setZsx_badgeOffset:(CGPoint)zsx_badgeOffset {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view setZsx_badgeOffset:zsx_badgeOffset];
    }];
}

#pragma mark zsx_badgeBorderWidth
-(ZSXBadgeType)zsx_badgeType {
    return [self getSupperView].zsx_badgeType;
}

-(void)setZsx_badgeType:(ZSXBadgeType)zsx_badgeType {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view setZsx_badgeType:zsx_badgeType];
    }];
}
#pragma mark - end

#pragma mark - ZSXBadgeProlocol
/**
 显示角标
 */
-(void)zsx_showBadge {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view zsx_showBadge];
    }];
}

/**
 显示数字类型角标
 
 @param badgeNumber 角标值
 */
-(void)zsx_showNumberBadgeWithBadgeNumber:(NSInteger)badgeNumber {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view zsx_showNumberBadgeWithBadgeNumber:badgeNumber];
    }];
}

/**
 显示文本类型角标
 
 @param text 文本内容
 */
-(void)zsx_showTextBadgeWithText:(NSString *)text {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view zsx_showTextBadgeWithText:text];
    }];
}

-(void)zsx_clearBadge {
    [self getSupperViewWithCompletion:^(UIView * _Nullable view) {
        [view zsx_clearBadge];
    }];
}
#pragma mark - end

-(UIView *)getSupperView {
    UIView *view = [self valueForKeyPath:@"_view"];
    return view;
}

-(void)getSupperViewWithCompletion:(void (^)(UIView * _Nullable view))completion {
    dispatch_async(dispatch_get_main_queue(), ^{
        UIView *view = [self valueForKeyPath:@"_view"];
        !completion?:completion(view);
    });
}

@end
