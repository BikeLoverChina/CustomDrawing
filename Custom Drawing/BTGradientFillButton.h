//
//  BTGradientFillButton.h
//  Custom Drawing
//
//  Created by Chris Leversuch on 21/01/2016.
//  Copyright © 2016 Brightec. All rights reserved.
//

#import <UIKit/UIKit.h>


IB_DESIGNABLE
@interface BTGradientFillButton : UIButton
@property (strong, nonatomic) IBInspectable UIColor *startColor;
@property (strong, nonatomic) IBInspectable UIColor *endColor;
@end
