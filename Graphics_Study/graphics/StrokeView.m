//
//  StrokeView.m
//  Graphics_Study
//
//  Created by Robin on 13-7-29.
//  Copyright (c) 2013年 Robin. All rights reserved.
//

#import "StrokeView.h"

@implementation StrokeView

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
    [self drawSigleLine];
    [self drawPath];
}
- (void)drawSigleLine
{
    [[UIColor brownColor] set];
    CGContextRef currentContex = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(currentContex, 0.5);
    CGContextMoveToPoint(currentContex, 50, 50);
    CGContextAddLineToPoint(currentContex, 200, 200);
    CGContextStrokePath(currentContex);
}
- (void)drawPath
{
  CGMutablePathRef path =   CGPathCreateMutable();
    CGRect rect = [[UIScreen mainScreen] bounds];
    CGPathMoveToPoint(path, NULL, rect.origin.x, rect.origin.y);
    CGPathAddLineToPoint(path, NULL, rect.size.width, rect.size.height);
    
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    CGContextAddPath(currentContext, path);
    [[UIColor blueColor] set];
    CGContextDrawPath(currentContext, kCGPathFillStroke);
    CGPathRelease(path);
}
@end
