//
//  CustomerManagementTableViewController.h
//  ParseStarterProject
//
//  Created by RAULCABRERA on 09/05/15.
//
//

#import <UIKit/UIKit.h>
#import <CustomersTableViewCell.h>
@interface CustomerManagementTableViewController : UITableViewController<UITableViewDelegate>
@property (nonatomic,strong) NSArray *arrayCustomers;
@end
