//
//  ViewController.h
//  Homework2
//
//  Created by student on 9/5/14.
//  Copyright (c) 2014 cs@eku.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *cityBar;
@property (weak, nonatomic) IBOutlet UISegmentedControl *optionsBar;
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UIImageView *optionImage;
- (IBAction)optionIsSelected:(id)sender;
- (IBAction)cityIsSelected:(id)sender;

@end
