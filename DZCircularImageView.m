//
//  DZRoundImageView.m
//  Connectae
//
//  Created by Ignacio on 8/12/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import "DZCircularImageView.h"

#define density [UIScreen mainScreen].scale

@interface DZCircularImageView ()
@end

@implementation DZCircularImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.clipsToBounds = YES;
        self.contentMode = UIViewContentModeScaleAspectFit;
    }
    return self;
}

- (void)setFrame:(CGRect)frame
{
    if (_uniqueSize > 0) [super setFrame:CGRectMake(frame.origin.x, frame.origin.y, _uniqueSize, _uniqueSize)];
    else [super setFrame:frame];
}

- (void)setImage:(UIImage *)image
{
    UIImage *_image = nil;
    
    if (_borderColor) _image = [image circularWithOutterBorderColor:_borderColor andBorderWidth:_borderWidth];
    else _image = [image circular];
    
    [super setImage:[UIImage imageWithCGImage:_image.CGImage scale:density+1 orientation:_image.imageOrientation]];
}

@end
