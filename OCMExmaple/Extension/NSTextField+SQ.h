//
//  NSTextField+SQ.h
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/11/12.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTextField (SQ)


//设置placehodle的颜色
- (void)sqSetPlaceHolder:(NSString *)palceHolder color:(NSColor *)tipTextColor;

@end

NS_ASSUME_NONNULL_END
