//
//  PlayersViewController.m
//  Ratings
//
//  Created by ECEP2010 on 9/18/15.
//  Copyright (c) 2015 ECEP. All rights reserved.
//

#import "PlayersViewController.h"
#import "Players.h"
#import "PlayerDetailsViewController.h"
@interface PlayersViewController ()

@end

@implementation PlayersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - PlayerDetailsViewControllerDelegate

- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)playerDetailsViewController:(PlayerDetailsViewController *)controller didAddPlayer:(Players *)player
{
    [self.arrPlayers addObject:player];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:([self.arrPlayers count] -1) inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)playerDetailsViewControllerDidSave:(PlayerDetailsViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arrPlayers.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier = @"PlayerCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    Players *player = (self.arrPlayers)[indexPath.row];
    
    /*// for subtitle cell
    cell.textLabel.text = player.name;
    cell.detailTextLabel.text = player.game;
    cell.imageView.image = [UIImage imageNamed:@"Players.png"]; */
    
    // custom cell
    UILabel *nameLable = (UILabel *)[cell viewWithTag:1];
    nameLable.text = player.name;
    UILabel *gameLable = (UILabel *)[cell viewWithTag:2];
    gameLable.text = player.game;
    UIImageView *imageRate = (UIImageView *)[cell viewWithTag:3];
    imageRate.image = [self imageForRating:player.rating];
    
    return cell;
}


// Image for rating
- (UIImage *)imageForRating: (int)rating
{

    switch (rating) {
        case 1:
            return [UIImage imageNamed:@"1StarsSmall"];
            break;
        case 2:
            return [UIImage imageNamed:@"2StarsSmall"];
            break;
        case 3:
            return [UIImage imageNamed:@"3StarsSmall"];
            break;
        case 4:
            return [UIImage imageNamed:@"4StarsSmall"];
            break;
        case 5:
            return [UIImage imageNamed:@"5StarsSmall"];
            break;
            }
    return nil;
}


/* method is invoked whenever a segue is about to take place */
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"AddPlayer"]) {
        UINavigationController *navigationController = segue.destinationViewController;
        PlayerDetailsViewController *playerDetailsViewController = [navigationController viewControllers][0];
        playerDetailsViewController.delegate = self;
    }
}


@end
