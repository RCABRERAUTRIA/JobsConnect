//
//  CustomersTableViewCell.h
//  ParseStarterProject
//
//  Created by RAULCABRERA on 09/05/15.
//
//

#import <UIKit/UIKit.h>

@interface CustomersTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *lastname;
@property (strong, nonatomic) IBOutlet UILabel *address;
@property (strong, nonatomic) IBOutlet UILabel *cellphone;
@property (strong, nonatomic) IBOutlet UILabel *typedocument;
@property (strong, nonatomic) IBOutlet UILabel *emaill;
@property (strong, nonatomic) IBOutlet UILabel *document;

@end
