//
//  GradenView.m
//  Graphics_Study
//
//  Created by Robin on 13-7-29.
//  Copyright (c) 2013年 Robin. All rights reserved.
//

#import "GradenView.h"

@implementation GradenView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    [self drawGradent];
}

- (void)drawGradent
{
    UIColor *startColor = [UIColor blueColor];
    CGFloat *startColorComponents =
    (CGFloat *)CGColorGetComponents([startColor CGColor]);
    UIColor *endColor = [UIColor greenColor];
    CGFloat *endColorComponents =
    (CGFloat *)CGColorGetComponents([endColor CGColor]);
    
    CGFloat colorComponents[8] = {
        /* Four components of the blue color (RGBA) */ startColorComponents[0],
        startColorComponents[1],
        startColorComponents[2],
        startColorComponents[3], /* First color = blue */
        /* Four components of the green color (RGBA) */ endColorComponents[0], endColorComponents[1],
        endColorComponents[2],
        endColorComponents[3], /* Second color = green */
    };
    
    CGFloat colorIndices[2] = {
        0.0f, /* Color 0 in the colorComponents array */ 1.0f, /* Color 1 in the colorComponents array */
    };
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace, (const CGFloat *)&colorComponents, (const CGFloat *)&colorIndices,2);
    CGColorSpaceRelease(colorSpace);
    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    CGPoint startPoint, endPoint;
    startPoint = CGPointMake(0.0f, screenBounds.size.height / 2.0f);
    endPoint = CGPointMake(screenBounds.size.width, startPoint.y);
    
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    CGContextDrawLinearGradient(currentContext, gradient, startPoint, endPoint, 0);
    CGGradientRelease(gradient);
}
@end
