//
//  UsersViewController.m
//  Day2
//
//  Created by Academy387 on 12/5/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "UsersViewController.h"

@interface UsersViewController ()

@end

@implementation UsersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    User* user1 = [[User alloc] initWithFirstName:@"User" andLastName:@"1"];
    User* user2 = [[User alloc] initWithFirstName:@"User" andLastName:@"2"];
    User* user3 = [[User alloc] initWithFirstName:@"User" andLastName:@"3"];
    User* user4 = [[User alloc] initWithFirstName:@"User" andLastName:@"4"];
    _users=[[NSArray alloc] initWithObjects:user1,user2,user3,user4, nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_users count];}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell;
    if(indexPath.row%2 == 0)
        cell=[tableView dequeueReusableCellWithIdentifier:@"showUser"];
    
    else
        cell=[tableView dequeueReusableCellWithIdentifier:@"showUser2"];
    
    User* user= (User *)[_users objectAtIndex:indexPath.row];
    cell.textLabel.text=[user getFullName];
    return cell;
}



@end
