//
//  NSStatusItem+SQ.h
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/11/7.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSStatusItem (SQ)

+ (instancetype)sx_statusBar;
/**
 model = YES
 static const CGFloat NSVariableStatusItemLength = -1.0;
 static const CGFloat NSSquareStatusItemLength = -2.0;
 */
+ (instancetype)sx_statusBarWithhightLightModel:(BOOL)model itemLeng:(CGFloat)itemLength;

+ (instancetype)sx_statusBarWithhightLightModel:(BOOL)model itemLeng:(CGFloat)itemLength toolTip:(NSString *)tooltip;
@end

NS_ASSUME_NONNULL_END
