//
//  UIBarButtonItem+FTCustom.h
//  Where To?
//
//  Created by Ortwin Gentz on 06.05.10.
//  Copyright 2010 FutureTap. All rights reserved.
//

@interface UIBarButtonItem (FTCustom)
- (void)mySetStyle:(UIBarButtonItemStyle)newStyle;
- (id)initWithBarButtonSystemItem_My:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action;
- (void)myAwakeFromNib;
@end
