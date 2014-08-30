//
//  CYOuterRoundedButton.m
//  RoundedOutButtonDemo
//
//  Created by Cheng-Yu Hsu on 8/30/14.
//  Copyright (c) 2014 ChengYu-Hsu. All rights reserved.
//

#import "CYOuterRoundedButton.h"

@interface CYOuterRoundedButton()

@property (nonatomic, assign) CGFloat radius;

@end

@implementation CYOuterRoundedButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame radius:(CGFloat)radius
{
    self = [super initWithFrame:frame];
    if(self){
        
        _radius = radius;
        CGFloat width = CGRectGetWidth(frame);
        CGFloat height = CGRectGetHeight(frame);
        
        UIBezierPath *path = [[UIBezierPath alloc] init];
        
        //bottom-left corner
        [path addArcWithCenter:CGPointMake(0, height - radius)
                        radius:radius
                    startAngle:M_PI_2
                      endAngle:0
                     clockwise:NO];
        //left edge
        [path addLineToPoint:CGPointMake(radius, radius)];
        
        //top-left corner
        [path addArcWithCenter:CGPointMake(radius * 2, radius)
                        radius:radius
                    startAngle:M_PI
                      endAngle:-M_PI_2
                     clockwise:YES];
        
        //top edge
        [path addLineToPoint:CGPointMake(width - radius * 2, 0)];
        
        //top-right corner
        [path addArcWithCenter:CGPointMake(width - radius * 2, radius)
                        radius:radius
                    startAngle:-M_PI_2
                      endAngle:0
                     clockwise:YES];
        
        //right edge
        [path addLineToPoint:CGPointMake(width - radius, height - radius)];
        
        //bottom-right corner
        [path addArcWithCenter:CGPointMake(width, height - radius)
                        radius:radius
                    startAngle:M_PI
                      endAngle:M_PI_2
                     clockwise:NO];
        //end path
        [path closePath];
        
        //create layer mask
        CAShapeLayer *mask = [[CAShapeLayer alloc] init];
        
        mask.frame = self.bounds;
        mask.path = path.CGPath;
        self.layer.mask = mask;
        
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
