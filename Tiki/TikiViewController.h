//
//  TikiViewController.h
//  Tiki
//
//  Created by Alex Lauderdale on 8/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tiki.h"


@interface TikiViewController : UIViewController

@property (strong, nonatomic) Tiki *currentTiki;
@property (weak, nonatomic) IBOutlet UIImageView *currentTikiImage;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *strength;
@property (strong, nonatomic) IBOutlet UILabel *attack;
@property (strong, nonatomic) IBOutlet UILabel *powers;
@property (strong, nonatomic) IBOutlet UILabel *defense;
- (IBAction)showCommand:(id)sender;



@end
