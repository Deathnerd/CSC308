//
//  ViewController.h
//  Example16
//
//  Created by student on 12/2/14.
//  Copyright (c) 2014 cs@eku.edu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dbmanager.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *peopleTable;
- (IBAction)addNewRecord:(id)sender;

@end
