//
//  Customers.h
//  ParseStarterProject
//
//  Created by RAULCABRERA on 09/05/15.
//
//

#import <Parse/Parse.h>

@interface Customers : PFObject<PFSubclassing>
+(NSString *)parseClassName;
@property (retain) NSString *typedocument;
@property (retain) NSString *document;
@property (retain) NSString *name;
@property (retain) NSString *lastname;
@property (retain) NSString *address;
@property (retain) NSNumber *cellphone;
@property (retain) NSString *emaill;
@property          BOOL      state;


@end
