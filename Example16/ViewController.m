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

- (IBAction)addNewRecord:(id)sender {
    [self performSegueWithIdentifier:@"idSegueToEditor" sender:self];
}
@end
