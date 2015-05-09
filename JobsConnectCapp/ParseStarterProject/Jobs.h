//
//  Jobs.h
//  ParseStarterProject
//
//  Created by RAULCABRERA on 09/05/15.
//
//

#import <Parse/Parse.h>

@interface Jobs : PFObject<PFSubclassing>
+(NSString *)parseClassName;
@property (retain) NSDate       *dateprogramming;
@property (retain) NSDate       *datebegin;
@property (retain) NSDate       *datefinish;
@property (retain) NSString     *job;
@property (retain) NSNumber     *price;
@property          BOOL         state;
@end
