//
//  ViewController.h
//  AppSencilla
//
//  Created by Mario Alejandro Sanz Fernández on 8/2/17.
//  Copyright © 2017 Mario Alejandro Sanz Fernández. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *miTextoLabel;

@property (weak, nonatomic) IBOutlet UITextField *editText;

@property (weak, nonatomic) IBOutlet UIButton *button;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)botonPulsado:(id)sender;


@end

