//
//  UIColor+Producer.h
//  Tourism
//
//  Created by Kerwin on 16/5/10.
//  Copyright © 2016年 theonelgq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Producer)

+ (UIColor *)colorWithRGBValue:(int)value;

+ (UIColor *)colorWithRGBValue:(int)value alpha:(CGFloat)alpha;

- (UIImage *)colorTransformImage;

@end
