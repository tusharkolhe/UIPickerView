//
//  ViewController.m
//  TKPickerView
//
//  Created by Felix ITs 01 on 18/10/16.
//  Copyright © 2016 Tushar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
        self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"picimg.jpg"]];
    
    companies = @[@"Apple",  @"Dell", @"Acer", @"Lenevo", @"hp"];
    rams = @[@"1gb",  @"2gb", @"4gb", @"8gb", @"16gb"];
    harddisks = @[@"128",  @"256Gb", @"512GB", @"1TB", @"121 Flash"];
    processors = @[@"dual core",  @"i3", @"i5", @"i7", @"64-bit Xeon"];
    config=@[companies,
             processors,
             rams,
             harddisks
             ];
    
    
    
    NSLog(@"%@",config);
        self.picker.dataSource=self;
        self.picker.delegate=self;
    
    configurationDictionary = [[NSMutableDictionary alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
      return config.count;
}

// The number of rows of data


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0) {
        return companies.count;
    }
    else if (component == 1) {
        return processors.count;
    }
    else if (component == 2) {
        return rams.count;
    }
    else if (component == 3) {
        return harddisks.count;
    }
    else {
        return 0;
    }


}

// The data to return for the row and component (column) that's being passed in



- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [[config objectAtIndex:component] objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    NSArray *temp = [config objectAtIndex:component];
    
    NSString *value = [temp objectAtIndex:row];
    
    NSLog(@"%@",value);
    
    if (component == 0) {
        //value shows company name
        
        [configurationDictionary setValue:value forKey:@"company"];
    }
    else if (component == 1) {
        //value shows processor name
        [configurationDictionary setValue:value forKey:@"processor"];

    }
    else if (component == 2) {
        //value shows ram name
        [configurationDictionary setValue:value forKey:@"ram"];

    }
    else if (component == 3) {
        //value shows harddisk name
        [configurationDictionary setValue:value forKey:@"hard_disk"];

    }
    else {
        NSLog(@"%@",configurationDictionary);
    }
    NSLog(@"%@",configurationDictionary);


}

- (IBAction)doneButton:(id)sender {
   
    NSLog(@"%@",configurationDictionary);
    _labelTitle.text=@"Your Configuration is:";
    if (configurationDictionary) {
        self.companyLbl.text = [configurationDictionary valueForKey:@"company"];
        self.processorLbl.text = [configurationDictionary valueForKey:@"processor"];
        self.ramLbl.text= [configurationDictionary valueForKey:@"ram"];
        self.hardDiskLbl.text = [configurationDictionary valueForKey:@"hard_disk"];
    }
}


@end
