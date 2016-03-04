//
//  BTGradientLineView.m
//  Custom Drawing
//
//  Created by Chris Leversuch on 22/01/2016.
//  Copyright © 2016 Brightec. All rights reserved.
//

#import "BTGradientLineView.h"


@implementation BTGradientLineView


- (void)layoutSubviews
{
    [super layoutSubviews];

    // Check if we've already added the gradient layer on a previous layout pass
    for (CALayer *layer in self.layer.sublayers) {
        if ([layer isKindOfClass:[CAGradientLayer class]]) return;
    }

    UIColor *endColour = [UIColor redColor];
    UIColor *midColour = [UIColor blueColor];

    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.bounds;
    gradient.colors = @[(id)endColour.CGColor, (id)midColour.CGColor, (id)endColour.CGColor];
    gradient.startPoint = CGPointMake(0, 0.5);
    gradient.endPoint = CGPointMake(1, 0.5);
    [self.layer insertSublayer:gradient atIndex:0];
}


@end
