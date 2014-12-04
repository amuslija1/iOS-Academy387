//
//  ViewController.h
//  Day2
//
//  Created by Faik Catibusic on 12/3/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "User.h"
#import "ShowViewController.h"

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;

@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property User* user;
@property (weak, nonatomic) IBOutlet UILabel *resultTextField;
@property (weak, nonatomic) IBOutlet UITextField *birthdateTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultBirthDate;

@end