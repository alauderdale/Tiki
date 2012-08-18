//
//  TikiViewController.m
//  Tiki
//
//  Created by Alex Lauderdale on 8/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TikiViewController.h"

@interface TikiViewController ()


@end

@implementation TikiViewController

@synthesize currentTiki;
@synthesize currentTikiImage;


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    TikiCommandViewController *cvc = [segue destinationViewController];
    [cvc setCurrentTiki:[self currentTiki]];


}


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
    // Do any additional setup after loading the view from its nib.
    UIImage *image = [UIImage imageNamed:[currentTiki filename]];
    [self.currentTikiImage setImage:image];
    
    [self setTitle:[currentTiki name]];
    
}

- (void)viewDidUnload
{
    [self setCurrentTiki:nil];
    [self setCurrentTikiImage:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
