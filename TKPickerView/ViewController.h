//
//  ViewController.h
//  TKPickerView
//
//  Created by Felix ITs 01 on 18/10/16.
//  Copyright © 2016 Tushar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>

{
    NSArray *config;
    NSMutableDictionary *configurationDictionary;
    NSArray *companies;
    NSArray *processors;
    NSArray *rams;
    NSArray *harddisks;
}
- (IBAction)doneButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;

@property (weak, nonatomic) IBOutlet UILabel *companyLbl;
   
@property (weak, nonatomic) IBOutlet UILabel *processorLbl;
@property (weak, nonatomic) IBOutlet UILabel *ramLbl;
@property (weak, nonatomic) IBOutlet UILabel *hardDiskLbl;

@property (weak, nonatomic) IBOutlet UIPickerView *picker;

@end

