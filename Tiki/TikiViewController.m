//
//  TikiViewController.m
//  Tiki
//
//  Created by Alex Lauderdale on 8/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TikiViewController.h"
#import "CommandDetailViewController.h"
#import "UIViewController+MJPopupViewController.h"

@interface TikiViewController () 


@end

@implementation TikiViewController


@synthesize currentTiki;
@synthesize currentTikiImage;



//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    TikiCommandViewController *cvc = [segue destinationViewController];
//    [cvc setCurrentTiki:[self currentTiki]];
//
//
//}




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
    
    
    
    
}

- (void)viewDidUnload
{
    [self setCurrentTiki:nil];
    [self setCurrentTikiImage:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (void)viewDidAppear:(BOOL)animated {
     [self becomeFirstResponder];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)showCommand:(id)sender {
    
    CommandDetailViewController *detailViewController = [[CommandDetailViewController alloc] initWithNibName:@"CommandDetailViewController" bundle:nil];
    [self presentPopupViewController:detailViewController animationType:MJPopupViewAnimationFade];
}


- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event

{
    [self dismissPopupViewControllerWithanimationType:MJPopupViewAnimationFade];
    
    CommandDetailViewController *detailViewController = [[CommandDetailViewController alloc] initWithNibName:@"CommandDetailViewController" bundle:nil];
    [self presentPopupViewController:detailViewController animationType:MJPopupViewAnimationFade];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    self.view.transform = CGAffineTransformIdentity;
    
    for (UIView *subview in self.view.subviews) {
        subview.transform = CGAffineTransformIdentity;
    }
    [UIView commitAnimations];
    
    
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    self.view.transform = CGAffineTransformIdentity;
    
    for (UIView *subview in self.view.subviews) {
        subview.transform = CGAffineTransformIdentity;
    }
    [UIView commitAnimations];
}
@end
