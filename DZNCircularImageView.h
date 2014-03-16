//
//  DZRoundImageView.h
//  DZNControls
//
//  Created by Ignacio on 8/12/13.
//  Copyright (c) 2013 DZN Labs. All rights reserved.
//

#import "DZNFadeImageView.h"
#import "DZNCategories.h"

@interface DZNCircularImageView : UIImageView

@property (nonatomic, strong) UIColor *borderColor;
@property (nonatomic) CGFloat borderWidth;
@property (nonatomic) CGFloat uniqueSize;
@property (nonatomic) BOOL showProgress;

@end