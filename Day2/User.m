//
//  User.m
//  Day2
//
//  Created by Faik Catibusic on 12/4/14.
//  Copyright (c) 2014 Academy387. All rights reserved.
//

#import "User.h"

@implementation User

-(id)initWithFirstName:(NSString*)firstName andLastName:(NSString*)lastName {
    self = [super init];
    self.firstName = firstName;
    self.lastName = lastName;
    return self;
}



-(NSString*)getFullName {
    NSString *fullName = [[NSString alloc] initWithFormat:@"%@, %@", self.firstName, self.lastName];
    return fullName;
}	

-(void)setUserFirstName:(NSString*)firstName andLastName:(NSString*)lastName {
    self.firstName = firstName;
    self.lastName = lastName;
}

-(NSInteger)getBirthdate {
    return _bday;
}

-(NSString*) getBday{
    NSString *bday = [[NSString alloc] initWithFormat:@"%ld", (long)self.bday];
    return bday;
}


-(void) setBirthdate:(NSInteger) date
{
    _bday=date;
}

@end
