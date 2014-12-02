//
//  EditorViewController.m
//  Example16
//
//  Created by student on 12/2/14.
//  Copyright (c) 2014 cs@eku.edu. All rights reserved.
//

#import "EditorViewController.h"

@interface EditorViewController ()
@property DbManager *dbManager;
@end

@implementation EditorViewController

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
    // Do any additional setup after loading the view.
    
    self.firstNameTextField.delegate = self;
    self.lastNameTextField.delegate = self;
    self.ageTextField.delegate = self;
    
    self.dbManager = [[DbManager alloc] initWithDatabaseFilename:@"myDb.sqlite"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (IBAction) saveInfoButton:(id)sender {
    NSString *query = [NSString stringWithFormat:@"INSERT INTO peopleInfo VALUES (null, '%@', '%@', %d)", self.firstNameTextField.text, self.lastNameTextField.text, [self.ageTextField.text intValue]];
    
    [self.dbManager executableQuery:query];
    
    if(self.dbManager.affectedRows != 0) {
        NSLog(@"Query was executed successfully. Affected rows: %d", self.dbManager.affectedRows);
        
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        NSLog(@"Could not execute the query.");
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
@end
