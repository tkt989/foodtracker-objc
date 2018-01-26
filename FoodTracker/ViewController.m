// 
//  ViewController.m
//  FoodTracker
//
//  Created by tkt989 on 2018/01/26.
//  Copyright © 2018年 tkt989. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

#pragma mark Properties

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *mealNameLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.nameTextField.delegate = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)setDefaultTextLabel:(UIButton *)sender {
    self.nameTextField.text = @"Default Text";
}

#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.nameTextField resignFirstResponder];
    return true;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.mealNameLabel.text = textField.text;
}

@end
