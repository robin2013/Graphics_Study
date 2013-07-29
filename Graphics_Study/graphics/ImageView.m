//
//  ImageView.m
//  Graphics_Study
//
//  Created by Robin on 13-7-29.
//  Copyright (c) 2013年 Robin. All rights reserved.
//

#import "ImageView.h"

@implementation ImageView

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
    UIImage *img = [UIImage imageNamed:@"ren.JPG"];
    [img drawAtPoint:CGPointMake(100, 100)];
    [img drawInRect:CGRectMake(0, 0, 100, 100)];
    [self test:CGRectMake(90, 90, 90, 90)];
}
- (void)test:(CGRect)rect
{
    CGContextRef context = (CGContextRef)UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor (context, 0.863, 0.863, 0.863, 1);
    UIBezierPath* trianglePath = [UIBezierPath bezierPath];
    float roundRectY = 2 * 0.71 + rect.origin.y;
    [trianglePath moveToPoint:CGPointMake(rect.origin.x + 80, rect.origin.y)];
    [trianglePath addLineToPoint:CGPointMake(rect.origin.x + 80 - 2 / 2, roundRectY + 3)];
    [trianglePath addLineToPoint:CGPointMake(rect.origin.x + 80 + 2 / 2, roundRectY + 3)];
    [trianglePath addLineToPoint:CGPointMake(rect.origin.x + 80, rect.origin.y)];
    UIBezierPath* roundRectPath = [UIBezierPath bezierPathWithRoundedRect:
                                   CGRectMake(rect.origin.x, roundRectY,
                                              rect.size.width, rect.size.height - 2 * 0.71)
                                                             cornerRadius:10];
    [trianglePath closePath];
    [roundRectPath closePath];
    [trianglePath fill];
    [roundRectPath fill];
}

@end
