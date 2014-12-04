//
//  ViewController.m
//  Example16
//
//  Created by student on 12/2/14.
//  Copyright (c) 2014 cs@eku.edu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated {
    [self loadData];
}

- (IBAction)addNewRecord:(id)sender {
    [self performSegueWithIdentifier:@"idSegueToEditor" sender:self];
}

- (void) loadData {
    NSString *query = @"SELECT * FROM peopleInfo;";
    
    if(self.peopleInfo != nil){
        self.peopleInfo = nil;
    }
    
    self.peopleInfo = [[NSArray alloc] initWithArray: [self.dbManager loadDataFromDB: query]];
    
    [self.tablePeople reloadData];
}
@end
