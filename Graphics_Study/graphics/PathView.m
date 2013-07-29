//
//  PathView.m
//  Graphics_Study
//
//  Created by Robin on 13-7-29.
//  Copyright (c) 2013年 Robin. All rights reserved.
//

#import "PathView.h"

@implementation PathView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    [self drawRect];
    [self drawRects];
    [self drawShadow];
}

- (void)drawShadow
{
    CGMutablePathRef path = CGPathCreateMutable();
    //CGRect rect = CGRectMake(100, 300, 100, 100);
    //CGPathAddRect(path, NULL, rect);
    CGRect rect1 = CGRectMake(180, 180, 90, 90);
    CGRect rect2 = CGRectMake(180, 270, 90, 90);
    CGRect rectangles[2] = {rect1, rect2 };
    CGPathAddRects(path, NULL, (const CGRect*)&rectangles, 2);
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    CGContextSetShadowWithColor(currentContext, CGSizeMake(2, 2), 20, [[UIColor grayColor] CGColor]);

    CGContextAddPath(currentContext, path);
    [[UIColor greenColor] setFill];
    CGContextDrawPath(currentContext, kCGPathFill);
}
- (void)drawRects
{
    CGMutablePathRef path = CGPathCreateMutable();
    CGRect rect1 = CGRectMake(180, 180, 90, 90);
    CGRect rect2 = CGRectMake(185, 185, 100, 100);
    CGRect rectangles[2] = {rect1, rect2 };
    CGPathAddRects(path, NULL, (const CGRect*)&rectangles, 2);
   // CGPathAddRect(path, NULL, rect);
    [[UIColor blueColor] set];
    [[UIColor redColor] setFill];
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(currentContext, 3);
    CGContextAddPath(currentContext, path);
    CGContextDrawPath(currentContext, kCGPathFillStroke);
    CGPathRelease(path);
}
- (void)drawRect
{
    CGMutablePathRef path = CGPathCreateMutable();
    CGRect rect = CGRectMake(80, 80, 90, 90);
    CGPathAddRect(path, NULL, rect);
    [[UIColor blueColor] set];
    [[UIColor redColor] setFill];
    [[UIColor orangeColor] setStroke];
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(currentContext, 3);
    CGContextAddPath(currentContext, path);
    CGContextDrawPath(currentContext, kCGPathFillStroke);
    CGPathRelease(path);
}
@end
