//
//  ViewController.m
//  Homework2
//
//  Created by student on 9/5/14.
//  Copyright (c) 2014 cs@eku.edu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSArray *cities;
    NSArray *options;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    cities = [[NSArray alloc] initWithObjects:@"Tokyo", @"Rome", @"Berlin", nil];
    options = [[NSArray alloc] initWithObjects:@"city_view", @"must_see", @"food", @"location", nil];
    
    self.cityLabel.text = @"Tokyo";
    self.optionImage.image = [UIImage imageNamed: @"Tokyo_city_view.jpg"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)optionIsSelected:(id)sender {
    NSString *imageName = [NSString stringWithFormat:@"%@_%@.jpg", [cities objectAtIndex:self.cityBar.selectedSegmentIndex], [options objectAtIndex:self.optionsBar.selectedSegmentIndex]]; // Get the image name
    
    self.optionImage.image = [UIImage imageNamed: imageName]; //Apply the image
}

- (IBAction)cityIsSelected:(id)sender {
    NSString *imageName = [NSString stringWithFormat:@"%@_%@.jpg", [cities objectAtIndex:self.cityBar.selectedSegmentIndex], [options objectAtIndex:self.optionsBar.selectedSegmentIndex]]; // Get the image name
    
    NSString *cityName = [NSString stringWithFormat:@"%@", [cities objectAtIndex:self.cityBar.selectedSegmentIndex]];
    
    self.optionImage.image = [UIImage imageNamed: imageName]; //Apply the image
    self.cityLabel.text = cityName;
}
@end
