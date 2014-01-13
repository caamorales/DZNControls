//
//  DZButton.m
//  DZNControls
//
//  Created by Ignacio on 8/12/13.
//  Copyright (c) 2013 DZN Labs. All rights reserved.
//

#import "DZNButton.h"

@implementation DZNButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    CGSize zone = _sensibleZone;
    if (CGSizeEqualToSize(zone,CGSizeZero)) zone = self.bounds.size;
    
    CGRect bound = self.bounds;
    CGFloat widthDelta = zone.width - bound.size.width;
    CGFloat heightDelta = zone.height - bound.size.height;
    bound = CGRectInset(bound, -0.5 * widthDelta, -0.5 * heightDelta);
    return CGRectContainsPoint(bound, point);
}

@end
