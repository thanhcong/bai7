//
//  ViewController.h
//  Demo
//
//  Created by techmaster on 9/18/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *converterMode;

@property (weak, nonatomic) IBOutlet UISlider *temperatureSlider;
@property (weak, nonatomic) IBOutlet UILabel *minLabel;
@property (weak, nonatomic) IBOutlet UILabel *maxLabel;
@property (weak, nonatomic) IBOutlet UILabel *result;

@end
