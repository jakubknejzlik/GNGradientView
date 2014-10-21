//
//  UIView+Gradient.m
//  16
//
//  Created by Jakub Knejzlik on 21/10/14.
//  Copyright (c) 2014 Jakub Knejzlik. All rights reserved.
//

#import "UIView+Gradient.h"

@implementation UIView (GNGradient)

-(CAGradientLayer *)gradientMaskLayer{
    if (![self.layer.mask isKindOfClass:[CAGradientLayer class]]) {
        self.layer.mask = [CAGradientLayer layer];
    }
    return (CAGradientLayer *)self.layer.mask;
}
-(void)updateGradientMaskFrame{
    self.layer.mask.frame = self.layer.bounds;
}


-(void)setGradientMaskAlphaChannels:(NSArray *)alphaChannels{
    NSMutableArray *colors = [NSMutableArray array];
    for (NSNumber *alpha in alphaChannels) {
        [colors addObject:(id)[[[UIColor whiteColor] colorWithAlphaComponent:[alpha floatValue]] CGColor]];
    }
    self.gradientMaskLayer.colors = colors;
}

-(void)setGradientMaskDirection:(GNGradientViewDirection)direction{
    switch (direction) {
        case GNGradientViewDirectionBottom:
            self.gradientMaskLayer.startPoint = CGPointMake(0.5, 0);
            self.gradientMaskLayer.endPoint = CGPointMake(0.5, 1);
            break;
        case GNGradientViewDirectionTop:
            self.gradientMaskLayer.startPoint = CGPointMake(0.5, 1);
            self.gradientMaskLayer.endPoint = CGPointMake(0.5, 0);
            break;
        case GNGradientViewDirectionLeft:
            self.gradientMaskLayer.startPoint = CGPointMake(1, 0.5);
            self.gradientMaskLayer.endPoint = CGPointMake(0, 0.5);
            break;
        case GNGradientViewDirectionRight:
            self.gradientMaskLayer.startPoint = CGPointMake(0, 0.5);
            self.gradientMaskLayer.endPoint = CGPointMake(1, 0.5);
            break;
    }
}

@end
