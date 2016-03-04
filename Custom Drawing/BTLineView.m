//
//  BTLineView.m
//  Custom Drawing
//
//  Created by Chris Leversuch on 21/01/2016.
//  Copyright © 2016 Brightec. All rights reserved.
//

#import "BTLineView.h"


@implementation BTLineView


- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextSetStrokeColorWithColor(context, [UIColor colorWithRed:69/255.0f green:78/255.0f blue:87/255.0f alpha:1.0f].CGColor);
    CGContextSetLineWidth(context, 2.0f);

    // top
    CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMinY(rect)+1);
    CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMinY(rect)+1);
    CGContextStrokePath(context);

    // right
    CGContextMoveToPoint(context, CGRectGetMaxX(rect)-1, CGRectGetMinY(rect)+1);
    CGContextAddLineToPoint(context, CGRectGetMaxX(rect)-1, CGRectGetMaxY(rect));
    CGContextStrokePath(context);
}


@end
