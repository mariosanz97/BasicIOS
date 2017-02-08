//
//  ViewController.m
//  AppSencilla
//
//  Created by Mario Alejandro Sanz Fernández on 8/2/17.
//  Copyright © 2017 Mario Alejandro Sanz Fernández. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *array;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_miTextoLabel setText:@"Aplicacion IOS"];
    // _miTextoLabel.text=@"editeext";
    _array=[[NSMutableArray alloc] init];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)botonPulsado:(id)sender {
    [_miTextoLabel setText:@"Aplicascion Android"];
    
    [_miTextoLabel setTextColor:[UIColor blueColor]];
    
    [_array addObject:_editText.text];
    [_editText setText:@""];
    [_tableView reloadData];
    

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_array count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mycell"];
    if (cell==nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"mycell"];
        
    }
    
    [cell.textLabel setText:[_array objectAtIndex:indexPath.row]];
    
    return cell;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UIAlertController* alert = [UIAlertController
                                alertControllerWithTitle:@"Borrar"
                                message:@"Desea boorar el mensaje?"
                                preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* okAction = [UIAlertAction
                               actionWithTitle:@"ok"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction *action){
                                   [_array removeObjectAtIndex:
                                    indexPath.row];
                                   
                               }];
    
    
    UIAlertAction* cancelAction=[UIAlertAction
                                 actionWithTitle:@"Cancel"
                                 style:UIAlertActionStyleDefault
                                 handler:^(UIAlertAction * action){
                                     
                                 }];
    
    [alert addAction:okAction];
    [alert addAction:cancelAction];

    
    [self presentViewController:alert animated:YES completion:nil];
    
    [tableView deselectRowAtIndexPath:indexPath animated:UITableViewRowAnimationFade];
    
}


@end
