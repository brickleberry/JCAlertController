//
//  UIColor+HightlightedColor.m
//  JCAlertView
//
//  Created by HJaycee on 2017/4/6.
//  Copyright © 2017年 HJaycee. All rights reserved.
//

#import "UIColor+HightlightedColor.h"

#define deepValue 12

@implementation UIColor (HightlightedColor)

- (UIColor *)hightlightedColor {
    const CGFloat *components = CGColorGetComponents(self.CGColor);
    
    CGFloat r = components[0];
    CGFloat g = components[1];
    CGFloat b = components[2];
    
    r = r * 255 - deepValue >= 0 ? r * 255 - deepValue : 0;
    g = g * 255 - deepValue >= 0 ? g * 255 - deepValue : 0;
    b = b * 255 - deepValue >= 0 ? b * 255 - deepValue : 0;
    
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:components[3]];
}

@end
