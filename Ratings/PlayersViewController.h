//
//  PlayersViewController.h
//  Ratings
//
//  Created by ECEP2010 on 9/18/15.
//  Copyright (c) 2015 ECEP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

@interface PlayersViewController : UITableViewController <PlayerDetailsViewControllerDelegate>
@property (nonatomic, strong) NSMutableArray *arrPlayers;
@end
