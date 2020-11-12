//
//  UIView+ZSXBadge.m
//  ZSXBadgeDemo
//
//  Created by 郑胜昔 on 2019/5/20.
//  Copyright © 2019 郑胜昔. All rights reserved.
//

#import "UIView+ZSXBadge.h"
#import <objc/runtime.h>

static NSString *zsx_badgeKey = @"zsx_badge";
static NSString *zsx_badgeNumberKey = @"zsx_badgeNumber";
static NSString *zsx_badgeMaxNumberKey = @"zsx_badgeMaxNumber";
static NSString *zsx_badgeValueKey = @"zsx_badgeValue";
static NSString *zsx_badgebackgroundColorKey = @"zsx_badgebackgroundColor";
static NSString *zsx_badgeTextColorKey = @"zsx_badgeTextColor";
static NSString *zsx_badgeTextFontSizeKey = @"zsx_badgeTextFontSize";
static NSString *zsx_badgeTextFontKey = @"zsx_badgeTextFont";
static NSString *zsx_badgeBorderWidthKey = @"zsx_badgeBorderWidth";
static NSString *zsx_badgeBorderColorKey = @"zsx_badgeBorderColor";
static NSString *zsx_badgeRedDotSizeKey = @"zsx_badgeRedDotSize";
static NSString *zsx_badgeOffsetKey = @"zsx_badgeOffset";
static NSString *zsx_badgeTypeKey = @"zsx_badgeType";

@implementation UIView (ZSXBadge)

#pragma mark - runtime扩展属性
#pragma mark zsx_badge
-(UILabel *)zsx_badge {
    UILabel *badge = objc_getAssociatedObject(self, &zsx_badgeKey);
    if (!badge) {
        badge = [UILabel new];
        badge.textAlignment = 1;
        badge.layer.zPosition = 1;//置顶
        [self addSubview:badge];
        objc_setAssociatedObject(self, &zsx_badgeKey, badge, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return badge;
}

-(void)setZsx_badge:(UILabel *)zsx_badge {
    objc_setAssociatedObject(self, &zsx_badgeKey, zsx_badge, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark zsx_badgeNumber
-(NSInteger)zsx_badgeNumber {
    return [objc_getAssociatedObject(self, &zsx_badgeNumberKey) integerValue];
}

-(void)setZsx_badgeNumber:(NSInteger)zsx_badgeNumber {
    objc_setAssociatedObject(self, &zsx_badgeNumberKey, @(zsx_badgeNumber), OBJC_ASSOCIATION_ASSIGN);
}

#pragma mark zsx_badgeMaxNumber
-(NSInteger)zsx_badgeMaxNumber {
    return [objc_getAssociatedObject(self, &zsx_badgeMaxNumberKey) integerValue];
}

-(void)setZsx_badgeMaxNumber:(NSInteger)zsx_badgeMaxNumber {
    objc_setAssociatedObject(self, &zsx_badgeMaxNumberKey, @(zsx_badgeMaxNumber), OBJC_ASSOCIATION_ASSIGN);
}

#pragma mark zsx_badgeValue
-(NSString *)zsx_badgeValue {
    return objc_getAssociatedObject(self, &zsx_badgeValueKey);
}

-(void)setZsx_badgeValue:(NSString *)zsx_badgeValue {
    objc_setAssociatedObject(self, &zsx_badgeValueKey, zsx_badgeValue, OBJC_ASSOCIATION_COPY);
}

#pragma mark zsx_badgeTextColor
-(UIColor *)zsx_badgeTextColor {
    UIColor *color = objc_getAssociatedObject(self, &zsx_badgeTextColorKey);
    if (!color) {
        color = [UIColor whiteColor];
        objc_setAssociatedObject(self, &zsx_badgeTextColorKey, color, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return color;
}

-(void)setZsx_badgeTextColor:(UIColor *)zsx_badgeTextColor {
    objc_setAssociatedObject(self, &zsx_badgeTextColorKey, zsx_badgeTextColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark zsx_badgeTextFontSize
-(CGFloat)zsx_badgeTextFontSize {
    CGFloat fontSize = [objc_getAssociatedObject(self, &zsx_badgeTextFontSizeKey) floatValue];
    if (fontSize == 0) {
        fontSize = 14;
        objc_setAssociatedObject(self, &zsx_badgeTextFontSizeKey, @(fontSize), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return fontSize;
}

-(void)setZsx_badgeTextFontSize:(CGFloat)zsx_badgeTextFontSize{
    objc_setAssociatedObject(self, &zsx_badgeTextFontSizeKey, @(zsx_badgeTextFontSize), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark zsx_badgeTextFont
-(UIFont *)zsx_badgeTextFont {
    return objc_getAssociatedObject(self, &zsx_badgeTextFontKey);;
}

-(void)setZsx_badgeTextFont:(UIFont *)zsx_badgeTextFont {
    objc_setAssociatedObject(self, &zsx_badgeTextFontKey, zsx_badgeTextFont, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark zsx_badgebackgroundColor
-(UIColor *)zsx_badgebackgroundColor {
    UIColor *color = objc_getAssociatedObject(self, &zsx_badgebackgroundColorKey);
    if (!color) {
        color = [UIColor redColor];
        objc_setAssociatedObject(self, &zsx_badgebackgroundColorKey, color, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return color;
}

-(void)setZsx_badgebackgroundColor:(UIColor *)zsx_badgebackgroundColor {
    objc_setAssociatedObject(self, &zsx_badgebackgroundColorKey, zsx_badgebackgroundColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark zsx_badgeBorderWidth
-(CGFloat)zsx_badgeBorderWidth {
    NSNumber *value = objc_getAssociatedObject(self, &zsx_badgeBorderWidthKey);
    return value.floatValue;
}

-(void)setZsx_badgeBorderWidth:(CGFloat)zsx_badgeBorderWidth {
    objc_setAssociatedObject(self, &zsx_badgeBorderWidthKey, @(zsx_badgeBorderWidth), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark zsx_badgeBorderColor
-(UIColor *)zsx_badgeBorderColor {
    UIColor *color = objc_getAssociatedObject(self, &zsx_badgeBorderColorKey);
    if (!color) {
        color = [UIColor blackColor];
        objc_setAssociatedObject(self, &zsx_badgeBorderColorKey, color, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return color;
}

-(void)setZsx_badgeBorderColor:(UIColor *)zsx_badgeBorderColor {
    objc_setAssociatedObject(self, &zsx_badgeBorderColorKey, zsx_badgeBorderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark zsx_badgeBorderWidth
-(CGFloat)zsx_badgeRedDotSize {
    CGFloat size = [objc_getAssociatedObject(self, &zsx_badgeRedDotSizeKey) floatValue];
    if (size == 0) {
        size = 9;
        objc_setAssociatedObject(self, &zsx_badgeRedDotSizeKey, @(size), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return size;
}

-(void)setZsx_badgeRedDotSize:(CGFloat)zsx_badgeRedDotSize {
    objc_setAssociatedObject(self, &zsx_badgeRedDotSizeKey, @(zsx_badgeRedDotSize), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark zsx_badgeOffset
-(CGPoint)zsx_badgeOffset {
    id obj = objc_getAssociatedObject(self, &zsx_badgeOffsetKey);
    if (obj != nil && [obj isKindOfClass:[NSDictionary class]] && [obj count] == 2) {
        CGFloat x = [obj[@"x"] floatValue];
        CGFloat y = [obj[@"y"] floatValue];
        return CGPointMake(x, y);
    } else
        return CGPointZero;
}

-(void)setZsx_badgeOffset:(CGPoint)zsx_badgeOffset {
    NSDictionary *cenerInfo = @{@"x" : @(zsx_badgeOffset.x), @"y" : @(zsx_badgeOffset.y)};
    objc_setAssociatedObject(self, &zsx_badgeOffsetKey, cenerInfo, OBJC_ASSOCIATION_RETAIN);
}

#pragma mark zsx_badgeBorderWidth
-(ZSXBadgeType)zsx_badgeType {
    return [objc_getAssociatedObject(self, &zsx_badgeTypeKey) integerValue];
}

-(void)setZsx_badgeType:(ZSXBadgeType)zsx_badgeType {
    objc_setAssociatedObject(self, &zsx_badgeTypeKey, @(zsx_badgeType), OBJC_ASSOCIATION_ASSIGN);
}
#pragma mark - end

#pragma mark - ZSXBadgeProlocol
/**
 显示角标
 */
-(void)zsx_showBadge {
    self.zsx_badge.hidden = NO;
    [self updateView];
}

/**
 显示数字类型角标
 
 @param badgeNumber 角标值
 */
-(void)zsx_showNumberBadgeWithBadgeNumber:(NSInteger)badgeNumber {
    self.zsx_badgeNumber = badgeNumber;
    self.zsx_badgeType = ZSXBadgeTypeNumber;
    [self zsx_showBadge];
}

/**
 显示文本类型角标
 
 @param text 文本内容
 */
-(void)zsx_showTextBadgeWithText:(NSString *)text {
    self.zsx_badgeValue = text;
    self.zsx_badgeType = ZSXBadgeTypeText;
    [self zsx_showBadge];
}

-(void)zsx_clearBadge {
    self.zsx_badge.hidden = YES;
}
#pragma mark - end

/**
 刷新视图
 */
-(void)updateView {
    dispatch_async(dispatch_get_main_queue(), ^{
        //设置label
        [self updateLabel];
    });
}

-(void)updateLabel {
    self.zsx_badge.font = self.zsx_badgeTextFont ? self.zsx_badgeTextFont : [UIFont systemFontOfSize:self.zsx_badgeTextFontSize];
    self.zsx_badge.textColor = self.zsx_badgeTextColor;
    self.zsx_badge.backgroundColor = self.zsx_badgebackgroundColor;
    self.zsx_badge.layer.borderWidth = self.zsx_badgeBorderWidth;
    self.zsx_badge.layer.borderColor = self.zsx_badgeBorderColor.CGColor;
    self.zsx_badge.layer.masksToBounds = YES;
    
    switch (self.zsx_badgeType) {
        case ZSXBadgeTypeRedDot: {
            self.zsx_badge.text = [NSString stringWithFormat:@""];
            [self.zsx_badge sizeToFit];
            
            CGRect rect = self.zsx_badge.frame;
            rect.size.height = self.zsx_badgeRedDotSize;
            rect.size.width = self.zsx_badgeRedDotSize;
            self.zsx_badge.frame = rect;
            CGPoint center = CGPointMake(self.frame.size.width + self.zsx_badgeOffset.x, 0 + self.zsx_badgeOffset.y);
            self.zsx_badge.center = center;
            self.zsx_badge.layer.cornerRadius = self.zsx_badge.frame.size.height / 2.0f;
        }
            break;
        case ZSXBadgeTypeNumber: {
            if (self.zsx_badgeNumber <= 0) {
                [self zsx_clearBadge];
                return;
            }
            NSString *strBadgeNumber = [NSString stringWithFormat:@"%ld",self.zsx_badgeNumber];
            if (self.zsx_badgeMaxNumber > 0) {
                if (self.zsx_badgeNumber > self.zsx_badgeMaxNumber) {
                    strBadgeNumber = [NSString stringWithFormat:@"%ld+",self.zsx_badgeMaxNumber];
                }
            }
            self.zsx_badge.text = strBadgeNumber;
            [self.zsx_badge sizeToFit];
            
            CGRect rect = self.zsx_badge.frame;
            CGFloat padding = 0;
            if (self.zsx_badgeTextFont) {
                padding = self.zsx_badgeTextFont.pointSize * (8 / 14.0f);
            }
            else {
                padding = self.zsx_badgeTextFontSize * (8 / 14.0f);
            }
            rect.size.height += self.zsx_badgeBorderWidth;
            rect.size.width += padding + self.zsx_badgeBorderWidth;
            self.zsx_badge.frame = rect;
            if (self.zsx_badge.frame.size.width < self.zsx_badge.frame.size.height) {
                CGRect rect = self.zsx_badge.frame;
                rect.size.width = rect.size.height;
                self.zsx_badge.frame = rect;
            }
            CGPoint center = CGPointMake(self.frame.size.width + self.zsx_badgeOffset.x, 0 + self.zsx_badgeOffset.y);
            self.zsx_badge.center = center;
            self.zsx_badge.layer.cornerRadius = self.zsx_badge.frame.size.height / 2.0f;
        }
            break;
        case ZSXBadgeTypeText: {
            if (!self.zsx_badgeValue.length) {
                [self zsx_clearBadge];
                return;
            }
            self.zsx_badge.text = [NSString stringWithFormat:@"%@",self.zsx_badgeValue];
            [self.zsx_badge sizeToFit];
            
            CGRect rect = self.zsx_badge.frame;
            CGFloat padding = 0;
            if (self.zsx_badgeTextFont) {
                padding = self.zsx_badgeTextFont.pointSize * (8 / 14.0f);
            }
            else {
                padding = self.zsx_badgeTextFontSize * (8 / 14.0f);
            }
            rect.size.height += self.zsx_badgeBorderWidth;
            rect.size.width += padding + self.zsx_badgeBorderWidth;
            self.zsx_badge.frame = rect;
            if (self.zsx_badge.frame.size.width < self.zsx_badge.frame.size.height) {
                CGRect rect = self.zsx_badge.frame;
                rect.size.width = rect.size.height;
                self.zsx_badge.frame = rect;
            }
            CGPoint center = CGPointMake(self.frame.size.width + self.zsx_badgeOffset.x, 0 + self.zsx_badgeOffset.y);
            self.zsx_badge.center = center;
            self.zsx_badge.layer.cornerRadius = self.zsx_badge.frame.size.height / 2.0f;
        }
            break;
            
        default:
            break;
    }
}

@end
