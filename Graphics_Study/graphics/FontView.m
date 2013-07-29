//
//  FontView.m
//  Graphics_Study
//
//  Created by Robin on 13-7-29.
//  Copyright (c) 2013年 Robin. All rights reserved.
//

#import "FontView.h"

@implementation FontView
@synthesize key;
- (void)dealloc
{
    [key release];
    [super dealloc];
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
    }
    return self;
}
- (void)enumerteFonts
{
    for (NSString *family in [UIFont familyNames]) {
        NSLog(@"Font Family = %@", family);
        
        for (NSString *fontName in [UIFont fontNamesForFamilyName:family]){ NSLog(@"\t%@", fontName);
        }
    }
}
- (void)drawFont
{
    UIColor *color = [UIColor colorWithRed:0.5 green:0.4 blue:0.9 alpha:1];
    [color set];
    UIFont *font = [UIFont fontWithName:@"HelveticaNeue-Bold"  size:40];
    [key drawAtPoint:CGPointMake(50, 50) withFont:font];
}
- (void) drawInRect
{
    UIColor *color = [UIColor colorWithRed:0.5 green:0.4 blue:0.9 alpha:1];
    [color set];
    UIFont *font = [UIFont fontWithName:@"HelveticaNeue-Bold"  size:40];
    [key drawInRect:self.bounds withFont:font];
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    [self drawFont];
    [self drawInRect];
}


@end
