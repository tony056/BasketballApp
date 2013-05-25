//
//  MembersEditingViewController.m
//  BasketballApp
//
//  Created by Parker Chiang on 13/5/20.
//  Copyright (c) 2013年 Sean Chen. All rights reserved.
//

#import "MembersEditingViewController.h"

@interface MembersEditingViewController ()

@end

@implementation MembersEditingViewController

int IfThereIsABencherPressed = 0;
int WhichBencherPressed[7];

#pragma mark - init data
- (void)initWhichBenchPressed{
    for (int i = 0; i <= 6; i++) {
        WhichBencherPressed[i] = 0;
    }
}

- (void)initIfThereIsABencherPressed{
    IfThereIsABencherPressed = 0;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
#pragma mark

#pragma mark - debugging methods collection
// for debugging: check WhichBenchPressed elements
- (void)Check_WhichBencherPressed_elements{
    NSLog(@"Current \"WhichBenchPressed\" elements:");
    for (int j = 0; j <= 6; j++) {
        NSLog(@"%i", WhichBencherPressed[j]);
    }
}

- (void)Check_TheBencherWaitedToBeOnCourt: (UIButton*) TheBencher{
    NSLog(@"Current Bencher Waited To Be On Court:");
    NSLog(@"%@", [[TheBencher titleLabel] text]);
}

- (void)Check_People_Waited_To_Be_Swapped:(UIButton*)Bencher With:(UIButton*)Player{
    NSLog(@"Swapping: Bencher: %@, Player:%@", Bencher.titleLabel.text, Player.titleLabel.text);
}
#pragma mark

#pragma mark - default methods
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSLog(@"On the show now!");
    
    [self initWhichBenchPressed];
    [self Check_WhichBencherPressed_elements];
    
    [self.Player1Button setTitle:@"No. 15" forState:UIControlStateNormal];
    [self.Player2Button setTitle:@"NO. 20" forState:UIControlStateNormal];
    [self.Player3Button setTitle:@"NO. 8" forState:UIControlStateNormal];
    [self.Player4Button setTitle:@"NO. 2" forState:UIControlStateNormal];
    [self.Player5Button setTitle:@"NO. 9" forState:UIControlStateNormal];
    
    [self.Player1Button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.Player2Button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.Player3Button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.Player4Button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.Player5Button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [self.Bencher1Button setTitle:@"NO. 1" forState: UIControlStateNormal];
    [self.Bencher2Button setTitle:@"NO. 37" forState: UIControlStateNormal];
    [self.Bencher3Button setTitle:@"NO. 4" forState: UIControlStateNormal];
    [self.Bencher4Button setTitle:@"NO. 5" forState: UIControlStateNormal];
    [self.Bencher5Button setTitle:@"NO. 6" forState: UIControlStateNormal];
    [self.Bencher6Button setTitle:@"NO. 7" forState: UIControlStateNormal];
    [self.Bencher7Button setTitle:@"NO. 13" forState: UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark

#pragma mark - decisions making methods
// check which bencher is waiting to be on court
- (UIButton*) TheBencherWaitedToBeOnCourt{
    int i;
    for (i = 0; i <= 6; i++) {
        if (WhichBencherPressed[i] == 1) {
            break;
        }
    }
    switch (i) {
        case 0:
            return self.Bencher1Button;
        case 1:
            return self.Bencher2Button;
        case 2:
            return self.Bencher3Button;
        case 3:
            return self.Bencher4Button;
        case 4:
            return self.Bencher5Button;
        case 5:
            return self.Bencher6Button;
        case 6:
            return self.Bencher7Button;
        default:
            break;
    }
}

-(BOOL) Check_Player_What_To_Do_Next{
    if (IfThereIsABencherPressed == 1) {
        return TRUE;
    }else if (IfThereIsABencherPressed == 0) return FALSE;
}

- (void) Swap_Buttons_Text:(UIButton*)Bencher with:(UIButton*)Player{
    
    NSString* tempBencher;
    NSString* tempPlayer;
    
    tempBencher = Bencher.titleLabel.text;
    tempPlayer = Player.titleLabel.text;
    
    [Bencher setTitle:tempPlayer forState:UIControlStateNormal];
    [Player setTitle:tempBencher forState:UIControlStateNormal];
    
}
#pragma mark;

#pragma mark - players button pressed
- (IBAction)Player1Pressed:(id)sender {
    
    if ([self Check_Player_What_To_Do_Next] == TRUE) {
        // debug used
        [self Check_TheBencherWaitedToBeOnCourt:self.TheBencherWaitedToBeOnCourt];
        
        // swap
        [self Check_People_Waited_To_Be_Swapped:self.TheBencherWaitedToBeOnCourt With:self.Player1Button];
        [self Swap_Buttons_Text:self.TheBencherWaitedToBeOnCourt with:self.Player1Button];
    }
    if ([self Check_Player_What_To_Do_Next] == FALSE) {
        // detect motion method
        NSLog(@"Detecting Motion:");
    }
    
    //clean up bencherArray, IfThereIsABencherPressed
    [self initWhichBenchPressed];
    [self initIfThereIsABencherPressed];
}

- (IBAction)Player2Pressed:(id)sender {
    
    if ([self Check_Player_What_To_Do_Next] == TRUE) {
        // debug used
        [self Check_TheBencherWaitedToBeOnCourt:self.TheBencherWaitedToBeOnCourt];
        
        // swap
        [self Check_People_Waited_To_Be_Swapped:self.TheBencherWaitedToBeOnCourt With:self.Player2Button];
        [self Swap_Buttons_Text:self.TheBencherWaitedToBeOnCourt with:self.Player2Button];
        
    }
    if ([self Check_Player_What_To_Do_Next] == FALSE) {
        // detect motion method
        NSLog(@"Detecting Motion:");
    }
    
    //clean up bencherArray, IfThereIsABencherPressed
    [self initWhichBenchPressed];
    [self initIfThereIsABencherPressed];
}

- (IBAction)Player3Pressed:(id)sender {
    
    if ([self Check_Player_What_To_Do_Next] == TRUE) {
        // debug used
        [self Check_TheBencherWaitedToBeOnCourt:self.TheBencherWaitedToBeOnCourt];
        
        // swap
        [self Check_People_Waited_To_Be_Swapped:self.TheBencherWaitedToBeOnCourt With:self.Player3Button];
        [self Swap_Buttons_Text:self.TheBencherWaitedToBeOnCourt with:self.Player3Button];
        
    }
    if ([self Check_Player_What_To_Do_Next] == FALSE) {
        // detect motion method
        NSLog(@"Detecting Motion:");
    }
    
    //clean up bencherArray, IfThereIsABencherPressed
    [self initWhichBenchPressed];
    [self initIfThereIsABencherPressed];
}

- (IBAction)Player4Pressed:(id)sender {
    
    if ([self Check_Player_What_To_Do_Next] == TRUE) {
        // debug used
        [self Check_TheBencherWaitedToBeOnCourt:self.TheBencherWaitedToBeOnCourt];
        
        // swap
        [self Check_People_Waited_To_Be_Swapped:self.TheBencherWaitedToBeOnCourt With:self.Player4Button];
        [self Swap_Buttons_Text:self.TheBencherWaitedToBeOnCourt with:self.Player4Button];
        
    }
    if ([self Check_Player_What_To_Do_Next] == FALSE) {
        // detect motion method
        NSLog(@"Detecting Motion:");
    }
    
    //clean up bencherArray, IfThereIsABencherPressed
    [self initWhichBenchPressed];
    [self initIfThereIsABencherPressed];
}

- (IBAction)Player5Pressed:(id)sender {
    
    if ([self Check_Player_What_To_Do_Next] == TRUE) {
        // debug used
        [self Check_TheBencherWaitedToBeOnCourt:self.TheBencherWaitedToBeOnCourt];
        
        // swap
        [self Check_People_Waited_To_Be_Swapped:self.TheBencherWaitedToBeOnCourt With:self.Player5Button];
        [self Swap_Buttons_Text:self.TheBencherWaitedToBeOnCourt with:self.Player5Button];
        
    }
    if ([self Check_Player_What_To_Do_Next] == FALSE) {
        // detect motion method
        NSLog(@"Detecting Motion:");
    }
    
    //clean up bencherArray, IfThereIsABencherPressed
    [self initWhichBenchPressed];
    [self initIfThereIsABencherPressed];
}
#pragma mark


#pragma mark - benchers button pressed
- (IBAction)Bencher1Pressed:(id)sender {
    [self initWhichBenchPressed];
    IfThereIsABencherPressed = 1;
    WhichBencherPressed[0] = 1;
    [self Check_WhichBencherPressed_elements];
}

- (IBAction)Bencher2Pressed:(id)sender{
    [self initWhichBenchPressed];
    IfThereIsABencherPressed = 1;
    WhichBencherPressed[1] = 1;
    [self Check_WhichBencherPressed_elements];
}

- (IBAction)Bencher3Pressed:(id)sender{
    [self initWhichBenchPressed];
    IfThereIsABencherPressed = 1;
    WhichBencherPressed[2] = 1;
    [self Check_WhichBencherPressed_elements];
    
}

- (IBAction)Bencher4Pressed:(id)sender{
    [self initWhichBenchPressed];
    IfThereIsABencherPressed = 1;
    WhichBencherPressed[3] = 1;
    [self Check_WhichBencherPressed_elements];
    
}

- (IBAction)Bencher5Pressed:(id)sender{
    [self initWhichBenchPressed];
    IfThereIsABencherPressed = 1;
    WhichBencherPressed[4] = 1;
    [self Check_WhichBencherPressed_elements];
    
}

- (IBAction)Bencher6Pressed:(id)sender {
    [self initWhichBenchPressed];
    IfThereIsABencherPressed = 1;
    WhichBencherPressed[5] = 1;
    [self Check_WhichBencherPressed_elements];
    
}

- (IBAction)Bencher7Pressed:(id)sender {
    [self initWhichBenchPressed];
    IfThereIsABencherPressed = 1;
    WhichBencherPressed[6] = 1;
    [self Check_WhichBencherPressed_elements];
    
}
#pragma mark




@end
