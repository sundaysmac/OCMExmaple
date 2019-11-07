//
//  NSStepper+SQ.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/10/31.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "NSStepper+SQ.h"

#import <AppKit/AppKit.h>


@implementation NSStepper (SQ)

+ (instancetype)sx_stepper{
    NSStepper *stepper = [[NSStepper alloc] init];
    return stepper;
}
/**
 stepper.wantsLayer = YES;
layer.backgroundColor = [NSColor cyanColor].CGColor;

stepper.minValue = 5;
maxValue = 10;
increment = 0.2; //步增值
valueWraps = NO;  //循环，YES - 超过最小值，回到最大值；超过最大值，来到最小值。
continuous = NO; //默认为YES-用户交互时会立即放松ValueChanged事件，NO 则表示只有等用户交互结束时才放松ValueChanged事件
autorepeat = YES; //默认为
 */

+ (instancetype)sx_stepperBgColor:(NSColor *)bgColor Wraps:(BOOL)valueWraps minV:(CGFloat)minValue masxV:(CGFloat)maxValue incrementV:(CGFloat)increment continuousV:(BOOL)continuous autorepeatV:(BOOL)autorepeat{
    NSStepper *stepper = [[NSStepper alloc] init];
    stepper.valueWraps = valueWraps;
    stepper.wantsLayer = YES;
    stepper.layer.backgroundColor = bgColor.CGColor;

    stepper.minValue = minValue;
    stepper.maxValue = minValue;

    stepper.increment = increment; //步增值

    stepper.valueWraps = valueWraps;  //循环，YES - 超过最小值，回到最大值；超过最大值，来到最小值。

    stepper.continuous = continuous; //默认为YES-用户交互时会立即放松ValueChanged事件，NO 则表示只有等用户交互结束时才放松ValueChanged事件
    stepper.autorepeat = autorepeat; //默认为
    return stepper;
}

+ (instancetype)sx_stepperBgColor:(NSColor *)bgColor Wraps:(BOOL)valueWraps minV:(CGFloat)minValue masxV:(CGFloat)maxValue incrementV:(CGFloat)increment continuousV:(BOOL)continuous autorepeatV:(BOOL)autorepeat action:(SEL)selector{
    NSStepper *stepper = [[NSStepper alloc] init];
    stepper.valueWraps = valueWraps;
    stepper.wantsLayer = YES;
    stepper.layer.backgroundColor = bgColor.CGColor;

    stepper.minValue = minValue;
    stepper.maxValue = minValue;

    stepper.increment = increment; //步增值

    stepper.valueWraps = valueWraps;  //循环，YES - 超过最小值，回到最大值；超过最大值，来到最小值。

    stepper.continuous = continuous; //默认为YES-用户交互时会立即放松ValueChanged事件，NO 则表示只有等用户交互结束时才放松ValueChanged事件
    stepper.autorepeat = autorepeat; //默认为
    [stepper setAction:selector];
    return stepper;
}

+ (instancetype)sx_stepperWithFrame:(CGRect)frame BgColor:(NSColor *)bgColor Wraps:(BOOL)valueWraps minV:(CGFloat)minValue masxV:(CGFloat)maxValue incrementV:(CGFloat)increment continuousV:(BOOL)continuous autorepeatV:(BOOL)autorepeat{
    NSStepper *stepper = [self sx_stepperBgColor:bgColor Wraps:valueWraps minV:minValue masxV:maxValue incrementV:increment continuousV:continuous autorepeatV:autorepeat];
    stepper.frame = frame;

    return stepper;
}

+ (instancetype)sx_stepperWithFrame:(CGRect)frame BgColor:(NSColor *)bgColor Wraps:(BOOL)valueWraps minV:(CGFloat)minValue masxV:(CGFloat)maxValue incrementV:(CGFloat)increment continuousV:(BOOL)continuous autorepeatV:(BOOL)autorepeat action:(SEL)selector{
    NSStepper *stepper = [self sx_stepperBgColor:bgColor Wraps:valueWraps minV:minValue masxV:maxValue incrementV:increment continuousV:continuous autorepeatV:autorepeat];
    stepper.frame = frame;
    [stepper setAction:selector];
    return stepper;
}


@end
