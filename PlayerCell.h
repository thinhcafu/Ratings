//
//  PlayerCell.h
//  Ratings
//
//  Created by ECEP2010 on 9/18/15.
//  Copyright (c) 2015 ECEP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UILabel *nameLable;
@property (nonatomic, weak) IBOutlet UILabel *gameLable;
@property (nonatomic, weak) IBOutlet UIImageView *rateImageView;
@end
