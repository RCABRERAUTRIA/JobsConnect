//
//  FormularioViewController.h
//  ParseStarterProject
//
//  Created by RAULCABRERA on 09/05/15.
//
//

#import <UIKit/UIKit.h>

@interface FormularioViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextField *lastname;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UITextField *address;
@property (strong, nonatomic) IBOutlet UITextField *cellphone;
@property (strong, nonatomic) IBOutlet UITextField *emaill;
@property (strong, nonatomic) IBOutlet UITextField *typedocument;
@property (strong, nonatomic) IBOutlet UITextField *document;
@property (strong, nonatomic) IBOutlet UIButton *btnGuardar;
@property (strong, nonatomic) IBOutlet UISwitch *state;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activity;

@end
