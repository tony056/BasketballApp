//
//  MembersEditingViewController.h
//  BasketballApp
//
//  Created by Parker Chiang on 13/5/20.
//  Copyright (c) 2013年 Sean Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MembersEditingViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *Player1Button;
@property (strong, nonatomic) IBOutlet UIButton *Player2Button;
@property (strong, nonatomic) IBOutlet UIButton *Player3Button;
@property (strong, nonatomic) IBOutlet UIButton *Player4Button;
@property (strong, nonatomic) IBOutlet UIButton *Player5Button;

@property (strong, nonatomic) IBOutlet UIButton *Bencher1Button;
@property (strong, nonatomic) IBOutlet UIButton *Bencher2Button;
@property (strong, nonatomic) IBOutlet UIButton *Bencher3Button;
@property (strong, nonatomic) IBOutlet UIButton *Bencher4Button;
@property (strong, nonatomic) IBOutlet UIButton *Bencher5Button;
@property (strong, nonatomic) IBOutlet UIButton *Bencher6Button;
@property (strong, nonatomic) IBOutlet UIButton *Bencher7Button;
@property (strong, nonatomic) IBOutlet UIButton *Bencher8Button;
@property (strong, nonatomic) IBOutlet UIButton *Bencher9Button;
@property (strong, nonatomic) IBOutlet UIButton *Bencher10Button;

- (IBAction)Player1Pressed:(id)sender;
- (IBAction)Player2Pressed:(id)sender;

- (IBAction)Bencher1Pressed:(id)sender;
- (IBAction)Bencher2Pressed:(id)sender;
- (IBAction)Bencher3Pressed:(id)sender;
- (IBAction)Bencher4Pressed:(id)sender;
- (IBAction)Bencher5Pressed:(id)sender;
- (IBAction)Bencher6Pressed:(id)sender;
- (IBAction)Bencher7Pressed:(id)sender;
- (IBAction)Bencher8Pressed:(id)sender;
- (IBAction)Bencher9Pressed:(id)sender;
- (IBAction)Bencher10Pressed:(id)sender;

- (void)setBenchesToZero; // set Benches all array's elements to zero
- (void)swap:(UIButton*)bencher with:(UIButton*)on_court_player; // swap with bencher
- (UIButton*)whoToSwapWith:(UIButton*)selfPlayerButton; // using bencherTrue array to determine who to swap with on-court-player

@end
