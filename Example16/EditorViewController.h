//
//  EditorViewController.h
//  Example16
//
//  Created by student on 12/2/14.
//  Copyright (c) 2014 cs@eku.edu. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DBManager.h"

@interface EditorViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;
- (IBAction)saveInfoButton:(id)sender;

@end
