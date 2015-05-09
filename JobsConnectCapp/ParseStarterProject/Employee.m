//
//  Employee.m
//  ParseStarterProject
//
//  Created by RAULCABRERA on 09/05/15.
//
//

#import "Employee.h"

@implementation Employee

@dynamic typedocument;
@dynamic document;
@dynamic name;
@dynamic lastname;
@dynamic address;
@dynamic cellphone;
@dynamic email;
@dynamic state;

+(void)load{
    [self registerSubclass];
}

+(NSString *)parseClassName{
    return @"Employee";
}
@end
