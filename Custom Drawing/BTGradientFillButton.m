//
//  BTGradientFillButton.m
//  Custom Drawing
//
//  Created by Chris Leversuch on 21/01/2016.
//  Copyright © 2016 Brightec. All rights reserved.
//

#import "BTGradientFillButton.h"


@implementation BTGradientFillButton


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}


- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self commonInit];
    }
    return self;
}


- (void)commonInit
{
    _startColor = [UIColor colorWithRed:33/255.0f green:43/255.0f blue:53/255.0f alpha:1.0f];
    _endColor = [UIColor colorWithWhite:1.0f alpha:1.0f];
}


- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGColorSpaceRef baseSpace = CGColorSpaceCreateDeviceRGB();

    NSArray *colours = @[(id)self.startColor.CGColor, (id)self.endColor.CGColor];
    CGGradientRef gradient = CGGradientCreateWithColors(baseSpace, (__bridge CFArrayRef)colours, NULL);

    CGPoint center = CGPointMake(CGRectGetWidth(self.frame) / 2, CGRectGetHeight(self.frame) / 2);
    CGContextDrawRadialGradient(context, gradient, center, 0.0f, center, CGRectGetWidth(self.frame), kCGGradientDrawsBeforeStartLocation);

    CGGradientRelease(gradient), gradient = NULL;
    CGColorSpaceRelease(baseSpace), baseSpace = NULL;
}


- (void)setStartColor:(UIColor *)startColor
{
    _startColor = startColor;
    [self setNeedsDisplay];
}


- (void)setEndColor:(UIColor *)endColor
{
    _endColor = endColor;
    [self setNeedsDisplay];
}


@end
