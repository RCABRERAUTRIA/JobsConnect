//
//  Jobs.m
//  ParseStarterProject
//
//  Created by RAULCABRERA on 09/05/15.
//
//

#import "Jobs.h"

@implementation Jobs
@dynamic dateprogramming;
@dynamic datebegin;
@dynamic datefinish;
@dynamic job;
@dynamic price;
@dynamic state;
+(void)load{
    [self registerSubclass];
}

+(NSString *)parseClassName{
  return @"Jobs";
}
@end
