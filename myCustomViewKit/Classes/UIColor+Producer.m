//
//  UIColor+Producer.m
//  Tourism
//
//  Created by Kerwin on 16/5/10.
//  Copyright © 2016年 theonelgq. All rights reserved.
//

#import "UIColor+Producer.h"

@implementation UIColor (Producer)

+ (UIColor *)colorWithRGBValue:(int)value alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((float)((value & 0xFF0000) >> 16))/255.0
                           green:((float)((value & 0xFF00) >> 8))/255.0
                            blue:((float)(value & 0xFF))/255.0
                           alpha:alpha];
}

+ (UIColor *)colorWithRGBValue:(int)value
{
    return [UIColor colorWithRGBValue:value alpha:1];
}

- (UIImage *)colorTransformImage {
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [self CGColor]);
    CGContextFillRect(context, rect);
    UIImage*theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

@end
