//
//  ViewController.m
//  Demo
//
//  Created by techmaster on 9/18/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}

- (IBAction)converterModeChange:(id)sender {
    
    if (self.converterMode.selectedSegmentIndex == 0) {
        self.minLabel.text = @"0\u2103";
        self.maxLabel.text = @"100\u2103";
        self.temperatureSlider.minimumValue = 0;
        self.temperatureSlider.maximumValue = 100;
    } else {
        self.minLabel.text = @"32F";
        self.maxLabel.text = @"212F";
        self.temperatureSlider.minimumValue = 32;
        self.temperatureSlider.maximumValue = 212;
    }
    
    self.temperatureSlider.value = [self convertUI];
    
}
- (IBAction)sliderTemperatureChange:(id)sender {
    [self convertUI];
}

- (float) convertUI
{
    float resultTemp =  [self convert:self.converterMode.selectedSegmentIndex
                  andInputTemperature:self.temperatureSlider.value];
    self.result.text = [NSString stringWithFormat:@"%2.1f", resultTemp];
    return resultTemp;
    //
}
- (float) convert: (NSInteger) mode andInputTemperature: (float) inputTemp
{
    if (mode == 0) {
        //Cencius to Fareigheight
        return inputTemp * 9/5 + 32;
        
    } else {
        //Fareigheight to Cencius
        return (inputTemp - 32) * 5/9;
        
    }
}


@end
