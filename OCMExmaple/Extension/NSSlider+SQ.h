//
//  NSSlider+SQ.h
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/10/28.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSSlider (SQ)

- (instancetype)sq_slider;

- (instancetype)sq_sliderWithBackgroundColor:(NSColor *)bgColor sliderType:(NSSliderType)sliderType;

- (void)sq_configTickMarkWithMarks:(NSInteger)markCounts;

+ (instancetype)sx_slider;

+ (instancetype)sx_sliderWithBackgroundColor:(NSColor *)bgColor sliderType:(NSSliderType)sliderType;

+ (void)sx_configSlider:(NSSlider *)slider TickMarkWithMarks:(NSInteger)markCounts trickMarkValuesOnly:(BOOL)markValueOnly;

@end

NS_ASSUME_NONNULL_END
