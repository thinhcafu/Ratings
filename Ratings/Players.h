//
//  Players.h
//  Ratings
//
//  Created by ECEP2010 on 9/18/15.
//  Copyright (c) 2015 ECEP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Players : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *game;
@property (nonatomic, assign) int rating;
@end
