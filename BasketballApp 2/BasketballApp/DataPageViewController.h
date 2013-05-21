//
//  DataPageViewController.h
//  BasketballApp
//
//  Created by Parker Chiang on 13/5/20.
//  Copyright (c) 2013年 Sean Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataPageViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *DateTextField;
@property (strong, nonatomic) IBOutlet UITextField *OpponentTextField;

@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *ResignKeyboard;

@end
