//
//  PlayerDetailsViewController.m
//  Ratings
//
//  Created by ECEP2010 on 9/21/15.
//  Copyright (c) 2015 ECEP. All rights reserved.
//

#import "PlayerDetailsViewController.h"
#import "Players.h"
@interface PlayerDetailsViewController ()

@end

@implementation PlayerDetailsViewController
{
    NSString *_game; // use this variable to remember the selected game so you can store it in the Player object later
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if ((self = [super initWithCoder:aDecoder])) {
        NSLog(@"init PlayerDetailsViewController");
        _game = @"Choose game"; //@"Chess"; init game
    }
    return self;
}

- (IBAction)cacel:(id)sender
{
    [self.delegate playerDetailsViewControllerDidCancel:self];
}

- (IBAction)done:(id)sender;
{
    Players *player = [[Players alloc] init];
    player.name = self.nameTextField.text;
    player.game = _game; //@"Chess";
    player.rating = 1;
    [self.delegate playerDetailsViewController:self
                                  didAddPlayer:player];
    //[self.delegate playerDetailsViewControllerDidSave:self];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    //display name of the game in the static table cell
    self.detailLabel.text = _game;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        [self.nameTextField becomeFirstResponder];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    NSLog(@"delloc PlayerDetailsViewController");
}

// open the game picker screen
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"PickGame"]) {
        GamePickerViewController *gamePickerViewController = segue.destinationViewController;
        gamePickerViewController.delegate =self;
        gamePickerViewController.game = _game;
    }
}

- (void)gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)game
{
    _game = game;
    self.detailLabel.text = game;
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
