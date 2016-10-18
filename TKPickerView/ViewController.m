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
    NSArray *planets;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
        self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"galaxy.jpg"]];
    planets=@[@"Sun",@"Mercury",@"Vinus",@"Earth",@"Mars",@"Jupiter",@"Saturn",@"Uranus",@"Neptune"];
   
        self.picker.dataSource=self;
        self.picker.delegate=self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [planets count];
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return planets[row];
}

@end
