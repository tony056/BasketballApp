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

int benchTrue[10];

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setBenchesToZero];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self.Player1Button setTitle:@"NO.P1 " forState:UIControlStateNormal];
    [self.Player2Button setTitle:@"NO.P2 " forState:UIControlStateNormal];
    [self.Player3Button setTitle:@"NO.P3 " forState:UIControlStateNormal];
    [self.Player4Button setTitle:@"NO.P4 " forState:UIControlStateNormal];
    [self.Player5Button setTitle:@"NO.P5 " forState:UIControlStateNormal];
    [self.Bencher1Button setTitle:@"NO.B1 " forState: UIControlStateNormal];
    [self.Bencher2Button setTitle:@"NO.B2 " forState: UIControlStateNormal];
    [self.Bencher3Button setTitle:@"NO.B3 " forState: UIControlStateNormal];
    [self.Bencher4Button setTitle:@"NO.B4 " forState: UIControlStateNormal];
    [self.Bencher5Button setTitle:@"NO.B5 " forState: UIControlStateNormal];
    [self.Bencher6Button setTitle:@"NO.B6 " forState: UIControlStateNormal];
    [self.Bencher7Button setTitle:@"NO.B7 " forState: UIControlStateNormal];
    [self.Bencher8Button setTitle:@"NO.B8 " forState: UIControlStateNormal];
    [self.Bencher9Button setTitle:@"NO.B9 " forState: UIControlStateNormal];
    [self.Bencher10Button setTitle:@"NO.B10 " forState: UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - set Benches all array's elements to zero
-(void) setBenchesToZero{
    for (int i = 0; i <= 9; i++) {
        benchTrue[i] = 0;
    }
}
#pragma mark

#pragma mark - swap implementation
// bencher? swap with on-court-player?
- (void)swap:(UIButton*)bencher with:(UIButton*)on_court_player{
    NSString *tempBencher, *tempPlayer;
    tempBencher = bencher.titleLabel.text;
    tempPlayer = on_court_player.titleLabel.text;
    [bencher setTitle:tempPlayer forState:UIControlStateNormal];
    [on_court_player setTitle:tempBencher forState:UIControlStateNormal];
}
#pragma mark

#pragma mark - who to swap with
- (UIButton*)whoToSwapWith:(UIButton*)selfPlayerButton{
    int j;
    for (j = 0; j <= 9; j=j+1) {
        if (benchTrue[j] == 1) {
            break;
        }
    }
    if (benchTrue[9] == 0) {
        //NSLog(@"There is no bencher coming");
        return selfPlayerButton;
    }
    
//    NSLog(@"Change with bencher %i", j+1);  // do swap here !!!!
    
    switch (j) {
        case 0:
            return self.Bencher1Button;
            break;
        case 1:
            return self.Bencher2Button;
            break;
        case 2:
            return self.Bencher3Button;
            break;
        case 3:
            return self.Bencher4Button;
            break;
        case 4:
            return self.Bencher5Button;
            break;
        case 5:
            return self.Bencher6Button;
            break;
        case 6:
            return self.Bencher7Button;
            break;
        case 7:
            return self.Bencher8Button;
            break;
        case 8:
            return self.Bencher9Button;
            break;
        case 9:
            return self.Bencher10Button;
            break;
        default:
            break;
    }
}
#pragma mark

#pragma mark - on-court player buttons pressed
- (IBAction)Player1Pressed:(id)sender {
    [self swap:[self whoToSwapWith:sender] with:sender];
    
    [self setBenchesToZero];

}

- (IBAction)Player2Pressed:(id)sender {
}
#pragma mark

#pragma mark - benchers buttons pressed
- (IBAction)Bencher1Pressed:(id)sender {
    //     [self performSelector:@selector(doHighlight:) withObject:sender afterDelay:0];
    [self setBenchesToZero];
    benchTrue[0] = 1;
}

- (IBAction)Bencher2Pressed:(id)sender{
    [self setBenchesToZero];
    benchTrue[1] = 1;
}

- (IBAction)Bencher3Pressed:(id)sender{
    [self setBenchesToZero];
    benchTrue[2] = 1;
}

- (IBAction)Bencher4Pressed:(id)sender{
    [self setBenchesToZero];
    benchTrue[3] = 1;
}

- (IBAction)Bencher5Pressed:(id)sender{
    [self setBenchesToZero];
    benchTrue[4] = 1;
}

- (IBAction)Bencher6Pressed:(id)sender{
    [self setBenchesToZero];
    benchTrue[5] = 1;
}

- (IBAction)Bencher7Pressed:(id)sender{
    [self setBenchesToZero];
    benchTrue[6] = 1;
}

- (IBAction)Bencher8Pressed:(id)sender{
    [self setBenchesToZero];
    benchTrue[7] = 1;
}

- (IBAction)Bencher9Pressed:(id)sender{
    [self setBenchesToZero];
    benchTrue[8] = 1;
}

- (IBAction)Bencher10Pressed:(id)sender{
    [self setBenchesToZero];
    benchTrue[9] = 1;
}

#pragma mark

// -(void) doHighlight: (UIButton*)button{ [button setHighlighted:YES]; }



@end
