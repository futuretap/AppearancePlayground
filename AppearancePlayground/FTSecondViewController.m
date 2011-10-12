//
//  FTSecondViewController.m
//  AppearancePlayground
//
//  Created by Ortwin Gentz on 23.09.11.
//  Copyright (c) 2011 FutureTap. All rights reserved.
//

#import "FTSecondViewController.h"
#import "FTNavigationController.h"

@implementation FTSecondViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	UIImage *navBarImage = [UIImage imageNamed:@"navBarBackground.png"];

	[self.navigationController.navigationBar setBackgroundImage:navBarImage 
												  forBarMetrics:UIBarMetricsDefault];
	[self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor], UITextAttributeTextColor,
																	 [UIColor whiteColor], UITextAttributeTextShadowColor, 
																	 [UIFont italicSystemFontOfSize:19], UITextAttributeFont, nil]];
	
	UIBarButtonItem *barButtonProxy = [UIBarButtonItem appearanceWhenContainedIn:[FTNavigationController class], nil];
	[barButtonProxy setBackButtonBackgroundImage:[[UIImage imageNamed:@"backButton.png"] stretchableImageWithLeftCapWidth:14 topCapHeight:0] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
	[barButtonProxy setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor], UITextAttributeTextColor,
											 [UIColor whiteColor], UITextAttributeTextShadowColor, nil] forState:UIControlStateNormal];
	[barButtonProxy setBackButtonBackgroundImage:[[UIImage imageNamed:@"backButton_pressed.png"] stretchableImageWithLeftCapWidth:14 topCapHeight:0] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];

	[barButtonProxy setBackgroundImage:[[UIImage imageNamed:@"buttonBackground.png"] stretchableImageWithLeftCapWidth:5 topCapHeight:0] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
	
	[[UIToolbar appearanceWhenContainedIn:[FTNavigationController class], nil] setBackgroundImage:navBarImage 
																			   forToolbarPosition:UIToolbarPositionAny
																					barMetrics:UIBarMetricsDefault];
	
	UISearchBar* searchBarProxy = [UISearchBar appearanceWhenContainedIn:[FTNavigationController class], nil];
	
	searchBarProxy.backgroundImage = navBarImage;
	searchBarProxy.scopeBarBackgroundImage = navBarImage;
	[searchBarProxy setScopeBarButtonBackgroundImage:navBarImage forState:UIControlStateNormal];

	
	[[UISlider appearanceWhenContainedIn:[FTNavigationController class], nil] setMinimumTrackImage:navBarImage forState:UIControlStateNormal];
	[[UIProgressView appearanceWhenContainedIn:[FTNavigationController class], nil] setProgressImage:navBarImage];
	[[UISegmentedControl appearanceWhenContainedIn:[FTNavigationController class], nil] setBackgroundImage:navBarImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)changeAppearance:(id)sender {
}

@end
