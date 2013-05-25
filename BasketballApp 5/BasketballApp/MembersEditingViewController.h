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

- (IBAction)Player1Pressed:(id)sender;

- (IBAction)Player2Pressed:(id)sender;

- (IBAction)Player3Pressed:(id)sender;

- (IBAction)Player4Pressed:(id)sender;

- (IBAction)Player5Pressed:(id)sender;


- (IBAction)Bencher1Pressed:(id)sender;

- (IBAction)Bencher2Pressed:(id)sender;

- (IBAction)Bencher3Pressed:(id)sender;

- (IBAction)Bencher4Pressed:(id)sender;

- (IBAction)Bencher5Pressed:(id)sender;

- (IBAction)Bencher6Pressed:(id)sender;

- (IBAction)Bencher7Pressed:(id)sender;

// init data
- (void)initWhichBenchPressed;
- (void)initIfThereIsABencherPressed;

// method for debugging
- (void)Check_WhichBencherPressed_elements;
- (void)Check_TheBencherWaitedToBeOnCourt: (UIButton*) TheBencher;
- (void)Check_People_Waited_To_Be_Swapped:(UIButton*)Bencher With:(UIButton*)Player;

// detect which bencher was pressed and "reture it"
- (UIButton*) TheBencherWaitedToBeOnCourt;

// check player button what to do next, if bencher pressed = 1: swap, if bencher pressed = 0: detect motion
- (BOOL) Check_Player_What_To_Do_Next;

// swap button text
- (void) Swap_Buttons_Text: (UIButton*)Bencher with:(UIButton*)Player;

@end
