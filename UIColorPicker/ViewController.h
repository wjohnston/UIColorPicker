//
//  ViewController.h
//  UIColorPicker
//
//  Created by William Johnston on 1/15/13.
//  Copyright (c) 2013 Idea2Appstore. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController <NSWindowDelegate>
{
    IBOutlet NSSlider *redSlider;
    IBOutlet NSSlider *greenSlider;
    IBOutlet NSSlider *blueSlider;
    
    IBOutlet NSTextField *redField;
    IBOutlet NSTextField *greenField;
    IBOutlet NSTextField *blueField;
    
    IBOutlet NSTextField *codeLabel;
    
    IBOutlet NSBox *colorBox;
    
    int redSliderValue;
    int greenSliderValue;
    int blueSliderValue;
}

@property (nonatomic, retain) IBOutlet NSSlider *redSlider;
@property (nonatomic, retain) IBOutlet NSSlider *greenSlider;
@property (nonatomic, retain) IBOutlet NSSlider *blueSlider;

@property (nonatomic, retain) IBOutlet NSTextField *redField;
@property (nonatomic, retain) IBOutlet NSTextField *greenField;
@property (nonatomic, retain) IBOutlet NSTextField *blueField;

@property (nonatomic, retain) IBOutlet NSTextField *codeLabel;

@property (nonatomic, retain) IBOutlet NSBox *colorBox;

@property int redSliderValue;
@property int greenSliderValue;
@property int blueSliderValue;

@end
