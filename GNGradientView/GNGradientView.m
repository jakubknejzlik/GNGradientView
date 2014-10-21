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
        [self setGradientMaskAlphaChannels:@[@1,@0.8,@0]];
        [self updateGradientMaskFrame];
        [self setGradientMaskDirection:GNGradientViewDirectionBottom];
        
        [NSTimer scheduledTimerWithTimeInterval:0.8 target:self selector:@selector(updateTest) userInfo:nil repeats:YES];
    }
    return self;
}



-(void)updateTest{
    self.frame = CGRectOffset(CGRectInset(self.frame, 0, 1),0,-1);
    [self updateGradientMaskFrame];
}

@end