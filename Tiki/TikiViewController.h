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
- (IBAction)showCommand:(id)sender;



@end
