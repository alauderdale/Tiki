//
//  TikiTableViewController.h
//  Tiki
//
//  Created by Alex Lauderdale on 8/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tiki.h"
#import "TikiViewController.h"

@interface TikiTableViewController : UITableViewController

@property (nonatomic, strong) NSDictionary *tikis;
@property (nonatomic, strong) NSArray *tikiKeys;

@end
