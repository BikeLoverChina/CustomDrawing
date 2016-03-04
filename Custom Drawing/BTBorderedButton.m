//
//  BTBorderedButton.m
//  Custom Drawing
//
//  Created by Chris Leversuch on 21/01/2016.
//  Copyright © 2016 Brightec. All rights reserved.
//

#import "BTBorderedButton.h"


@implementation BTBorderedButton


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
    _borderColor = [UIColor colorWithRed:69/255.0f green:78/255.0f blue:87/255.0f alpha:1.0f];

    self.layer.borderWidth = 1.0f;
    self.layer.borderColor = _borderColor.CGColor;
    self.layer.cornerRadius = 4.0f;
}


- (void)setBorderColor:(UIColor *)borderColor
{
    _borderColor = borderColor;
    self.layer.borderColor = borderColor.CGColor;
}


@end
