//
//  UIImage+UIColor.h
//  Charmy
//
//  Created by Cheng-Yu Hsu on 4/11/14.
//  Copyright (c) 2014 NetDB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UIColor)

+(UIImage *)imageWithColor:(UIColor *)color;

+(UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

+(UIImage *)gradientImageFrom:(UIColor *)fromColor to:(UIColor *)toColor size:(CGSize)size;

@end
