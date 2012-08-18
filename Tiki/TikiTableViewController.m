//
//  TikiTableViewController.m
//  Tiki
//
//  Created by Alex Lauderdale on 8/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TikiTableViewController.h"

@interface TikiTableViewController ()

@end

@implementation TikiTableViewController

NSMutableArray *tikis;


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender

{
    
    if ([segue.identifier isEqualToString:@"ShowTiki"]) {
        TikiViewController *tvc = [segue destinationViewController];
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
        Tiki *c = [tikis objectAtIndex:[path row]];
        [tvc setCurrentTiki:c];
    }

}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    tikis = [[NSMutableArray alloc] init];
    
    Tiki *tiki = [[Tiki alloc]init];
    
    [tiki setName:@"Tiki Name 1"];
    [tiki setFilename:@"overlook.png"];
    [tiki setCommand:@"Tiki Say Do thy bidding"];
    [tikis addObject:tiki]; 
    
    tiki = [[Tiki alloc]init];
    
    [tiki setName:@"Tiki Name 2"];
    [tiki setFilename:@"flag.png"];
    [tiki setCommand:@"Tiki Say Do thy bidding"];
    [tikis addObject:tiki]; 
    
    tiki = [[Tiki alloc]init];
    
    [tiki setName:@"Tiki Name 3"];
    [tiki setFilename:@"olives.png"];
    [tiki setCommand:@"Tiki Say Do thy bidding"];
    [tikis addObject:tiki]; 
    
    tiki = [[Tiki alloc]init];
    
    [tiki setName:@"Tiki Name 4"];
    [tiki setFilename:@"winery.png"];
    [tiki setCommand:@"Tiki Say Do thy bidding"];
    [tikis addObject:tiki]; 
    
    tiki = [[Tiki alloc]init];
    
    [tiki setName:@"Tiki Name 5"];
    [tiki setFilename:@"beach.png"];
    [tiki setCommand:@"Tiki Say Do thy bidding"];
    [tikis addObject:tiki]; 
    
    tiki = [[Tiki alloc]init];
    
    [tiki setName:@"Tiki Name 6"];
    [tiki setFilename:@"beach.png"];
    [tiki setCommand:@"Tiki Say Do thy bidding"];
    [tikis addObject:tiki]; 
    
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [tikis count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TikiCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    Tiki *current = [tikis objectAtIndex:indexPath.row];
    [cell.textLabel setText:[current name]];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
