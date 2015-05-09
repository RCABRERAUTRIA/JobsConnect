//
//  FormularioViewController.m
//  ParseStarterProject
//
//  Created by RAULCABRERA on 09/05/15.
//
//

#import "FormularioViewController.h"
#import "Customers.h"

@interface FormularioViewController ()

@end

@implementation FormularioViewController
@synthesize name;
@synthesize lastname;
@synthesize scrollView;
@synthesize cellphone;
@synthesize address;
@synthesize document;
@synthesize typedocument;
@synthesize state;
@synthesize btnGuardar;
@synthesize activity;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Setup del UIScrollView
    
    //Notificaciones del teclado
    
    //Detección de toques en el scroll view
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Métodos de acción adicionales
- (void) scrollViewPulsado
{
    [[self view] endEditing:YES];
}

/*
pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)saveCustomers:(id)sender {
    
    Customers * cust=[Customers object];
    cust.name=self.name.text;
    cust.document=self.document.text;
    cust.typedocument=self.typedocument.text;
    cust.lastname=self.lastname.text;
    cust.cellphone=@([self.cellphone.text intValue]);
    cust.address = self.address.text;
    cust.emaill=self.emaill.text;
    cust.state = state.on;
    [cust saveInBackground];
}

@end
