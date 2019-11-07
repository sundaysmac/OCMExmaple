//
//  NSStepper+SQ.h
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/10/31.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSStepper (SQ)


+ (instancetype)sx_stepper;
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

+ (instancetype)sx_stepperBgColor:(NSColor *)bgColor Wraps:(BOOL)valueWraps minV:(CGFloat)minValue masxV:(CGFloat)maxValue incrementV:(CGFloat)increment continuousV:(BOOL)continuous autorepeatV:(BOOL)autorepeat;

+ (instancetype)sx_stepperBgColor:(NSColor *)bgColor Wraps:(BOOL)valueWraps minV:(CGFloat)minValue masxV:(CGFloat)maxValue incrementV:(CGFloat)increment continuousV:(BOOL)continuous autorepeatV:(BOOL)autorepeat action:(SEL)selector;

+ (instancetype)sx_stepperWithFrame:(CGRect)frame BgColor:(NSColor *)bgColor Wraps:(BOOL)valueWraps minV:(CGFloat)minValue masxV:(CGFloat)maxValue incrementV:(CGFloat)increment continuousV:(BOOL)continuous autorepeatV:(BOOL)autorepeat;

+ (instancetype)sx_stepperWithFrame:(CGRect)frame BgColor:(NSColor *)bgColor Wraps:(BOOL)valueWraps minV:(CGFloat)minValue masxV:(CGFloat)maxValue incrementV:(CGFloat)increment continuousV:(BOOL)continuous autorepeatV:(BOOL)autorepeat action:(SEL)selector;

@end

NS_ASSUME_NONNULL_END
