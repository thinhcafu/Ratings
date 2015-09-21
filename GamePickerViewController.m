//
//  GamePickerViewController.m
//  Ratings
//
//  Created by ECEP2010 on 9/21/15.
//  Copyright (c) 2015 ECEP. All rights reserved.
//

#import "GamePickerViewController.h"

@interface GamePickerViewController ()

@end

@implementation GamePickerViewController
{
    NSArray *_arrGames;
    NSUInteger _selectIndex;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    _arrGames = @[@"Angry Birsd",
            @"Chess",
            @"Super Mario",
            @"Contra",
            @"Tank"];
    _selectIndex = [_arrGames indexOfObject:self.game];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [_arrGames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GameCell"];
    cell.textLabel.text = _arrGames[indexPath.row];
    
    if (indexPath.row == _selectIndex) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (_selectIndex != NSNotFound)
    {
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:
                                 [NSIndexPath indexPathForRow:_selectIndex inSection:0]];
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    _selectIndex = indexPath.row;
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    NSString *game = _arrGames[indexPath.row];
    [self.delegate gamePickerViewController:self didSelectGame:game];
    
}


@end
