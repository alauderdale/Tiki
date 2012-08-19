//
//  CommandDetailViewController.h
//  Tiki
//
//  Created by Alex Lauderdale on 8/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tiki.h"

@interface CommandDetailViewController : UIViewController


{
    UILabel *_randomText;
    NSArray *_attacks;

}


@property (strong, nonatomic) IBOutlet UILabel *randomText;
@property (strong, nonatomic) NSArray *attacks;
@property (strong, nonatomic) Tiki *currentTiki;

@end
