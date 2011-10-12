//
//  UIBarButtonItem+FTCustom.m
//  Where To?
//
//  Created by Ortwin Gentz on 06.05.10.
//  Copyright 2010 FutureTap. All rights reserved.
//

#import <UIKit/UIBarButtonItem.h>

#import "UIBarButtonItem+FTCustom.h"

@implementation UIBarButtonItem (FTCustom)

- (void)mySetStyle:(UIBarButtonItemStyle)newStyle {
	UIImage *normalButtonImage = [UIImage imageNamed:(newStyle == UIBarButtonItemStyleDone) ? @"buttonBackground_done.png" : @"buttonBackground.png"];
	
	[self setBackgroundImage:[normalButtonImage stretchableImageWithLeftCapWidth:5 topCapHeight:0] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
	// optionally set the highlighted state, too
	
	[self mySetStyle:newStyle]; // original implementation
}

- (id)initWithBarButtonSystemItem_My:(UIBarButtonSystemItem)systemItem target:(id)target action:(SEL)action {
	self = [self initWithBarButtonSystemItem_My:systemItem target:target action:action]; // original implementation

	if (UIBarButtonSystemItemDone == systemItem || UIBarButtonSystemItemSave == systemItem) {
		self.style = UIBarButtonItemStyleDone;
	}
	 return self;
}

- (void)myAwakeFromNib {
	[self myAwakeFromNib];
	self.style = self.style;
}

@end
