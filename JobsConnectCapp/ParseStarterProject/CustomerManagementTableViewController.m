//
//  CustomerManagementTableViewController.m
//  ParseStarterProject
//
//  Created by RAULCABRERA on 09/05/15.
//
//

#import "CustomerManagementTableViewController.h"
#import "Customers.h"


@interface CustomerManagementTableViewController ()
@property Customers *cs;
@end

@implementation CustomerManagementTableViewController
@synthesize cs;
@synthesize arrayCustomers;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //arrayCustomers = [[NSArray alloc] initWithObjects:@"Item 1",@"Item 2",@"Item3", nil];
    
    NSMutableArray *mutable=[[NSMutableArray alloc] init];

 PFQuery *query=[PFQuery queryWithClassName:@"Customers"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            
                //arrayCustomers=[[NSArray alloc] initWithArray:(query.findObjects) copyItems:YES];
            for(Customers *object in objects){
                if(object.state){
                    [mutable addObject:object];
                }
            }
            arrayCustomers=mutable;
            // The find succeeded.
            [self.tableView reloadData]; //Metodo para recargar la tabla.
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
    


    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    NSLog(@"%lu", (unsigned long)arrayCustomers.count);

  
    return[arrayCustomers count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
   
    return @"Gestion de Clientes";
    
}
//Metodo que devuelve las celdas hay que crear el buld identifa en este caso es cell.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    Customers *customer = self.arrayCustomers[indexPath.row];
       CustomersTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    //[arrayCustomers[indexPath.row]
    cell.typedocument.text=[NSString stringWithFormat:@" %@:",customer.typedocument];
    cell.document.text=[NSString stringWithFormat:@" %@:",customer.document];
    cell.name.text=[NSString stringWithFormat:@" %@:%@",@"Nombre",customer.name];
    cell.lastname.text=[NSString stringWithFormat:@" %@:%@",@"Apellido",customer.lastname];;
    cell.address.text=[NSString stringWithFormat:@" %@:%@",@"Direccion",customer.address];
    cell.cellphone.text=[NSString stringWithFormat:@" %@:%@",@"Documento",customer.cellphone.description];
    NSLog(@"%@",customer.emaill);
    cell.emaill.text=customer.emaill;
   
 
   

    
    //cell.textLabel.text=customer.name;
    
                        
    
    
    // Configure the cell...
    
    return cell;
}
- (IBAction)editCustomer:(id)sender {
    if(self.cs ==nil){
       NSLog(@"error");
    }else{
       NSLog(@"%@",self.cs.name);
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    self.cs=self.arrayCustomers[indexPath.row];
    NSLog(@"%@ %@ ",self.cs.name,self.cs.objectId);
  
   
}

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

/*

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
