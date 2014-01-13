//
//  DZFadeImageView.m
//  DZNControls
//
//  Created by Ignacio on 9/16/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import "DZNFadeImageView.h"

#define density [UIScreen mainScreen].scale

@interface DZNFadeImageView ()
@property (nonatomic, strong) UIImageView *inView;
@property (nonatomic, strong) UIImageView *outView;
@property (nonatomic) BOOL transitioning;
@end

@implementation DZNFadeImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.transitionDuration = 0;
        self.blurRadius = 0;
    }
    return self;
}

- (void)setImage:(UIImage *)image
{
    if (!image) return;
    
    UIImage *_image = [UIImage imageWithCGImage:image.CGImage scale:density+1 orientation:image.imageOrientation];
    if (_blurRadius > 0) _image = [_image filterGlaussianBlurWithRadius:_blurRadius];
    
    if (_transitionDuration > 0) {
        
        _transitioning = YES;
        
        if (!_inView && self.image) {
            _inView = [[UIImageView alloc] initWithFrame:CGRectWithSize(self.frame.size)];
            _inView.image = self.image;
            _inView.alpha = 1.0;
            [self addSubview:_inView];
        }
        
        if (!_outView && _inView) {
            _outView = [[UIImageView alloc] initWithFrame:CGRectWithSize(self.frame.size)];
            _outView.image = [_image copy];
            _outView.alpha = 0.0;
            [self addSubview:_outView];
        }
        
//        [super setImage:nil];
        
        [UIView animateWithDuration:_transitionDuration
                              delay:0
                            options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionTransitionCrossDissolve
                         animations:^{_inView.alpha = 0; _outView.alpha = 1.0;}
                         completion:^(BOOL finished){
                             [super setImage:_image];
                             [self cleanTransition];
                         }];
    }
    else {
        [super setImage:_image];
    }
}

- (void)cleanTransition
{
    _transitioning = NO;

    if (_inView) {
        [_inView removeFromSuperview];
        [self setInView:nil];
    }
    
    if (_outView) {
        [_outView removeFromSuperview];
        [self setOutView:nil];
    }
}

@end
