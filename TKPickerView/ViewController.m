//
//  ViewController.m
//  TKPickerView
//
//  Created by Felix ITs 01 on 18/10/16.
//  Copyright © 2016 Tushar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

{
    NSArray *config;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
        self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"picimg.jpg"]];
    
    config=@[@[@"Apple",  @"Dell", @"Acer", @"Lenevo", @"hp"],
             @[@"dual core",  @"i3", @"i5", @"i7", @"64-bit Xeon"],
             @[@"1gb",  @"2gb", @"4gb", @"8gb", @"16gb"],
             @[@"128",  @"256Gb", @"512GB", @"1TB", @"121 Flash"]];
    
    
    
    NSLog(@"%@",config);
        self.picker.dataSource=self;
        self.picker.delegate=self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 4;
}

// The number of rows of data


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 5;
}

// The data to return for the row and component (column) that's being passed in



- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return config[component][row];
}

- (IBAction)doneButton:(id)sender {
    
    
}


@end
