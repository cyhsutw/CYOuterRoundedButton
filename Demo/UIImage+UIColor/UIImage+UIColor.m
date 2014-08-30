//
//  UIImage+UIColor.m
//  Charmy
//
//  Created by Cheng-Yu Hsu on 4/11/14.
//  Copyright (c) 2014 NetDB. All rights reserved.
//

#import "UIImage+UIColor.h"

@implementation UIImage (UIColor)

+(UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+(UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size
{
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+(UIImage *)gradientImageFrom:(UIColor *)fromColor to:(UIColor *)toColor size:(CGSize)size
{
    // Create the gradient
    CAGradientLayer *gradient = [CAGradientLayer layer];
    
    // Set colors
    gradient.colors = [NSArray arrayWithObjects:
                       (id)fromColor.CGColor,
                       (id)toColor.CGColor,
                       nil];
    
    // Set bounds
    gradient.frame = CGRectMake(0, 0, size.width, size.height);
    
    
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    
    [gradient renderInContext:UIGraphicsGetCurrentContext()];
    /*
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //Create a colour space
    CGColorSpaceRef colorspace = CGColorSpaceCreateDeviceRGB();
    //Now create the gradient
    size_t gradientNumberOfLocations = 2;
    CGFloat gradientLocations[2] = {0.0, 1.0};
    
    const CGFloat *fromColorComponents = CGColorGetComponents(fromColor.CGColor);
    const CGFloat *toColorComponents = CGColorGetComponents(toColor.CGColor);
    
    CGFloat gradientComponents[8] = {
        fromColorComponents[0],
        fromColorComponents[1],
        fromColorComponents[2],
        fromColorComponents[3],
        
        toColorComponents[0],
        toColorComponents[1],
        toColorComponents[2],
        toColorComponents[3]
    };
    
    CGGradientRef gradient = CGGradientCreateWithColorComponents (colorspace, gradientComponents, gradientLocations, gradientNumberOfLocations);
    //Fill the context with the gradient - this assumes a vertical gradient:
    
    CGContextDrawLinearGradient(context, gradient, CGPointMake(0, 0), CGPointMake(0, size.height), 0);
    //Now you can create an image from the context:
    */
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //Finally release the gradient, colour space and context:
    
    //CGGradientRelease(gradient);
    //CGColorSpaceRelease(colorspace);
    UIGraphicsEndImageContext();

    return image;
}

@end
