//
//  NSPopover+SQ.h
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/10/25.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSPopover (SQ)
+ (instancetype)sx_popverWith:(NSAppearanceName)name contentVC:(NSViewController *)vc behavior:(NSPopoverBehavior)popoverBehavior;
@end

NS_ASSUME_NONNULL_END
