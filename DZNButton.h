//
//  DZButton.h
//  DZNControls
//
//  Created by Ignacio on 8/12/13.
//  Copyright (c) 2013 DZN Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

/** A button with extended behaviour. */
@interface DZNButton : UIButton

/** The size of the sensible area it should have. This is a way for increasing the touch input area without having to create a bigger button. */
@property (nonatomic) CGSize sensibleZone;

@end
