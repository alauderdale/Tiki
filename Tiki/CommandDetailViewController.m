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
                @"A life spent making mistakes is not only more honorable, but more useful than a life spent doing nothing.",
                @"Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment.",
                @"Don't go around saying the world owes you a living. The world owes you nothing. It was here first.",
                @"If you hear a voice within you say 'you cannot paint,' then by all means paint, and that voice will be silenced.",
                @"The aim of art is to represent not the outward appearance of things, but their inward significance.",
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
