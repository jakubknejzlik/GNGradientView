//
//  GNGradientView.m
//  GNGradientView
//
//  Created by Jakub Knejzlik on 21/10/14.
//  Copyright (c) 2014 Jakub Knejzlik. All rights reserved.
//

#import "GNGradientView.h"

@implementation GNGradientView

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setGradientMaskAlphaChannels:@[@1,@0]];
        [self updateGradientMaskFrame];
        [self setGradientMaskDirection:GNGradientViewDirectionBottom];
    }
    return self;
}

@end