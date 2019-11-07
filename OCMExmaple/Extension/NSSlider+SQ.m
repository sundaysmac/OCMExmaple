//
//  NSSlider+SQ.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/10/28.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "NSSlider+SQ.h"

#import <AppKit/AppKit.h>


@implementation NSSlider (SQ)

- (instancetype)sq_slider{
    NSSlider *slider = [[NSSlider alloc] init];
    slider.wantsLayer = true;
    return slider;
}

- (instancetype)sq_sliderWithBackgroundColor:(NSColor *)bgColor sliderType:(NSSliderType)sliderType{
    NSSlider *slider = [self sq_slider];
    slider.layer.backgroundColor = bgColor.CGColor;
    slider.sliderType = sliderType;
    return slider;
}

- (void)sq_configTickMarkWithMarks:(NSInteger)markCounts{
    self.tickMarkPosition = NSTickMarkPositionAbove;
    self.numberOfTickMarks = markCounts;
    self.allowsTickMarkValuesOnly = true;
}

+ (instancetype)sx_slider{
    NSSlider *slider = [[NSSlider alloc] init];
    slider.wantsLayer = true;
    return slider;
}

+ (instancetype)sx_sliderWithBackgroundColor:(NSColor *)bgColor sliderType:(NSSliderType)sliderType{
    NSSlider *slider = [self sx_slider];
    slider.layer.backgroundColor = bgColor.CGColor;
    slider.sliderType = sliderType;
    return slider;
}

+ (void)sx_configSlider:(NSSlider *)slider TickMarkWithMarks:(NSInteger)markCounts trickMarkValuesOnly:(BOOL)markValueOnly{
    slider.tickMarkPosition = NSTickMarkPositionAbove;
    slider.numberOfTickMarks = markCounts;
    slider.allowsTickMarkValuesOnly = markValueOnly;
}

@end
