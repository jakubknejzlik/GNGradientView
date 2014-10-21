//
//  UIView+Gradient.h
//  16
//
//  Created by Jakub Knejzlik on 21/10/14.
//  Copyright (c) 2014 Jakub Knejzlik. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    GNGradientViewDirectionBottom,
    GNGradientViewDirectionTop,
    GNGradientViewDirectionLeft,
    GNGradientViewDirectionRight
} GNGradientViewDirection;


@interface UIView (GNGradient)

-(CAGradientLayer *)gradientMaskLayer;

-(void)updateGradientMaskFrame;

-(void)setGradientMaskAlphaChannels:(NSArray *)alphaChannels;
-(void)setGradientMaskDirection:(GNGradientViewDirection)direction;

@end
