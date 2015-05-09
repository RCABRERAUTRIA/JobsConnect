//
//  Customers.m
//  ParseStarterProject
//
//  Created by RAULCABRERA on 09/05/15.
//
//

#import "Customers.h"

@implementation Customers

@dynamic typedocument;
@dynamic document;
@dynamic name;
@dynamic lastname;
@dynamic address;
@dynamic cellphone;
@dynamic emaill;
@dynamic state;


+(void)load{
    [self registerSubclass];
}

+(NSString *)parseClassName{
    return @"Customers";
}


@end
