//
//  DZRoundImageView.h
//  Connectae
//
//  Created by Ignacio on 8/12/13.
//  Copyright (c) 2013 DZEN. All rights reserved.
//

#import "DZFadeImageView.h"
#import "DZCategories.h"

/**  */
@interface DZCircularImageView : DZFadeImageView

/**  */
@property (nonatomic, strong) UIColor *borderColor;
/**  */
@property (nonatomic) CGFloat borderWidth;
/**  */
@property (nonatomic) CGFloat uniqueSize;
/**  */
@property (nonatomic) BOOL showProgress;

@end