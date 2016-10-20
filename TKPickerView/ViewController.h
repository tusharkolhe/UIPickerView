//
//  ViewController.h
//  TKPickerView
//
//  Created by Felix ITs 01 on 18/10/16.
//  Copyright © 2016 Tushar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>


   

@property (weak, nonatomic) IBOutlet UIPickerView *picker;

@end

