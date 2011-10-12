//
//  FTThirdViewController.h
//  AppearancePlayground
//
//  Created by Ortwin Gentz on 23.09.11.
//  Copyright (c) 2011 FutureTap. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FTThirdViewController : UIViewController {
@private
	UISegmentedControl *segmentedControl;
	UISearchBar	*searchBar;
	UITableView *tableView;
}

@property (nonatomic, retain) IBOutlet UISegmentedControl *segmentedControl;
@property (nonatomic, retain) IBOutlet UISearchBar *searchBar;
@property (nonatomic, retain) IBOutlet UITableView *tableView;
@end
