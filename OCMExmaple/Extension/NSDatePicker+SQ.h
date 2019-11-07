//
//  NSDatePicker+SQ.h
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/10/25.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN




@interface NSDatePicker (SQ)


- (instancetype)sq_datePickerWithStyle:(NSDatePickerStyle)datePickerStyle bgColor:(NSColor *)bgColor curDate:(NSDate *)curDate aciton:(SEL)selector;


@end

NS_ASSUME_NONNULL_END
