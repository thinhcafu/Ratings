//
//  GamePickerViewController.h
//  Ratings
//
//  Created by ECEP2010 on 9/21/15.
//  Copyright (c) 2015 ECEP. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GamePickerViewController;

/*  */
@protocol GamPickerViewCotrollerDelegate <NSObject>

- (void)gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)game;
@end

@interface GamePickerViewController : UITableViewController

@property (nonatomic, weak) id <GamPickerViewCotrollerDelegate> delegate;
@property (nonatomic, strong) NSString *game;

@end
