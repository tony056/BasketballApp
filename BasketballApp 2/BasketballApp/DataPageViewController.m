//
//  DataPageViewController.m
//  BasketballApp
//
//  Created by Parker Chiang on 13/5/20.
//  Copyright (c) 2013年 Sean Chen. All rights reserved.
//

#import "DataPageViewController.h"

@interface DataPageViewController ()

@end

@implementation DataPageViewController
@synthesize ResignKeyboard;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) dismissKeyboard{
    [self.DateTextField resignFirstResponder];
    [self.OpponentTextField resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
