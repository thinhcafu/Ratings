//
//  PlayerDetailsViewController.h
//  Ratings
//
//  Created by ECEP2010 on 9/21/15.
//  Copyright (c) 2015 ECEP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Players.h"
#import "GamePickerViewController.h"
//@class Players;

/* define a new delegate protocol that you’ll use to communicate back from the Add Player screen to the main Players screen when the user taps Cancel or Done. */
@class PlayerDetailsViewController;

@protocol PlayerDetailsViewControllerDelegate <NSObject>

- (void)playerDetailsViewControllerDidCancel: (PlayerDetailsViewController *)controller;
- (void)playerDetailsViewController:(PlayerDetailsViewController *)controller
                       didAddPlayer:(Players *)player;
- (void)playerDetailsViewControllerDidSave:(PlayerDetailsViewController *)controller;
@end

@interface PlayerDetailsViewController : UITableViewController <GamPickerViewCotrollerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@property (nonatomic, weak) id <PlayerDetailsViewControllerDelegate> delegate;

- (IBAction)cacel:(id)sender;
- (IBAction)done:(id)sender;
@end
