//
//  CommandDetailViewController.m
//  Tiki
//
//  Created by Alex Lauderdale on 8/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CommandDetailViewController.h"


@interface CommandDetailViewController ()

@end

@implementation CommandDetailViewController

@synthesize randomText= _randomText;
@synthesize attacks= _attacks;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Custom initialization
    _attacks = [NSArray arrayWithObjects:
                @"Kick",
                @"Punch",
                @"Bite",
                @"Gnaw",
                @"Run Away",
                nil];
    
    NSInteger randomIndex = arc4random() % [_attacks count];    
    NSString *yourRandomString = [_attacks objectAtIndex:randomIndex];
    
    [self.randomText setText:[NSString stringWithFormat:@"%@",yourRandomString]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
