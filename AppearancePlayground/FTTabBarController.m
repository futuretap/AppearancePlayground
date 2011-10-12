//
//  FTTabBarController.m
//  AppearancePlayground
//
//  Created by Ortwin Gentz on 23.09.11.
//  Copyright (c) 2011 FutureTap. All rights reserved.
//

#import "FTTabBarController.h"

@implementation FTTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

- (void)viewDidLoad
{
    [super viewDidLoad];

	self.tabBar.tintColor = [UIColor colorWithRed:0.310 green:0.194 blue:0.000 alpha:1.000];
	self.tabBar.selectedImageTintColor = [UIColor colorWithRed:1.000 green:0.627 blue:0.000 alpha:1.000];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
