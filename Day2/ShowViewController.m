//
//  ShowViewController.m
//  Day2
//
//  Created by Academy387 on 12/4/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "ShowViewController.h"

@implementation ShowViewController
-(void) setNewUser:(User *)userToShow {
    self.user=userToShow;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.resultLabel.text=[self.user getFullName];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
