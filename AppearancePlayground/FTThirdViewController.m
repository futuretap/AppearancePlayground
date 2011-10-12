//
//  FTThirdViewController.m
//  AppearancePlayground
//
//  Created by Ortwin Gentz on 23.09.11.
//  Copyright (c) 2011 FutureTap. All rights reserved.
//

#import "FTThirdViewController.h"

@implementation FTThirdViewController
@synthesize segmentedControl;
@synthesize searchBar;
@synthesize tableView;

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

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.navigationItem.rightBarButtonItem = [self editButtonItem];

	self.navigationItem.leftItemsSupplementBackButton = YES;
//	UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Second" style:UIBarButtonItemStyleBordered target:self action:nil];
//	[self.navigationItem setRightBarButtonItem:rightBarButtonItem];
//	self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Marker Felt" size:21], UITextAttributeFont, nil];
	

	[self.segmentedControl setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor], UITextAttributeTextColor,
												   [UIColor whiteColor], UITextAttributeTextShadowColor, 
												   [UIFont fontWithName:@"American Typewriter" size:15], UITextAttributeFont, nil]
										 forState:UIControlStateNormal];

	[self.searchBar setScopeBarButtonTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor], UITextAttributeTextColor,
														  [UIColor whiteColor], UITextAttributeTextShadowColor, 
														  [UIFont fontWithName:@"Marker Felt" size:15], UITextAttributeFont, nil] 
												forState:UIControlStateNormal];
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

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
	[super setEditing:editing animated:animated];
	[self.tableView setEditing:editing animated:animated];
}
@end
