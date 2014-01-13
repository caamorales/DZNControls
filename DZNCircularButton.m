//
//  DZCircularButton.m
//  DZNControls
//
//  Created by Ignacio on 9/27/13.
//  Copyright (c) 2013 Epic Peaks GmbH. All rights reserved.
//

#import "DZNCircularButton.h"

@implementation DZNCircularButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        
    }
    return self;
}

- (DZNCircularImageView *)imageView
{
    if ([self valueForKey:@"_imageView"] == nil || ![[self valueForKey:@"_imageView"] isKindOfClass:[DZNCircularImageView class]])
    {
        DZNCircularImageView *newImageView = [[DZNCircularImageView alloc] init];
        //        newImageView.animatedTransition = YES;
        
        [[self valueForKey:@"_imageView"] removeFromSuperview];
//        [self.contentView addSubview:newImageView];
        [self setValue:newImageView forKey:@"_imageView"];
    }
    return [self valueForKey:@"_imageView"];
}

@end
