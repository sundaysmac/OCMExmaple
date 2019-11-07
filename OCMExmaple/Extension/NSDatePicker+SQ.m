//
//  NSDatePicker+SQ.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/10/25.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "NSDatePicker+SQ.h"

#import <AppKit/AppKit.h>


@implementation NSDatePicker (SQ)

//    NSDatePickerStyle

//    typedef NS_ENUM(NSUInteger, NSDatePickerStyle) {
//        NSTextFieldAndStepperDatePickerStyle    = 0,
//        NSClockAndCalendarDatePickerStyle       = 1,
//        NSTextFieldDatePickerStyle              = 2
//    };

//typedef NS_OPTIONS(NSUInteger, NSDatePickerElementFlags) {
//    /* Time Elements */
//    NSHourMinuteDatePickerElementFlag       = 0x000c,
//    NSHourMinuteSecondDatePickerElementFlag = 0x000e,
//    NSTimeZoneDatePickerElementFlag        = 0x0010,
//
//    /* Date Elements */
//    NSYearMonthDatePickerElementFlag        = 0x00c0,
//    NSYearMonthDayDatePickerElementFlag        = 0x00e0,
//    NSEraDatePickerElementFlag            = 0x0100,
//};
- (instancetype)sq_datePickerWithStyle:(NSDatePickerStyle)datePickerStyle bgColor:(NSColor *)bgColor curDate:(NSDate *)curDate aciton:(SEL)selector{
    NSDatePicker *datePicker = [[NSDatePicker alloc] init];
    [datePicker setDatePickerStyle:datePickerStyle];
    datePicker.wantsLayer = true;
    datePicker.layer.backgroundColor = bgColor.CGColor;
    [datePicker setDateValue:curDate];
    [datePicker setTarget:self];
    [datePicker setAction:selector];
    return  datePicker;
}
@end
