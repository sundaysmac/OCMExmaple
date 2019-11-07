//
//  NSPopover+SQ.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/10/25.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "NSPopover+SQ.h"

#import <AppKit/AppKit.h>


@implementation NSPopover (SQ)

/**
系统定义了四种 Standard Appearances

NSAppearanceNameAqua
NSAppearanceNameLightContent
NSAppearanceNameVibrantDark
NSAppearanceNameVibrantLight //默认
 
 
 弹出样式 NSPopoverBehavior

 typedef NS_ENUM(NSInteger, NSPopoverBehavior) {
     NSPopoverBehaviorApplicationDefined = 0,
     NSPopoverBehaviorTransient = 1,
     NSPopoverBehaviorSemitransient = 2
 };

 
 出现的方位 NSRectEdge

 typedef NS_ENUM(NSUInteger, NSRectEdge) {
     NSRectEdgeMinX = CGRectMinXEdge, //按钮右侧
     NSRectEdgeMinY = CGRectMinYEdge, //上方
     NSRectEdgeMaxX = CGRectMaxXEdge, //左侧
     NSRectEdgeMaxY = CGRectMaxYEdge, //下面
     
 }

 如果popover 上面有按钮，弹出时，按钮可能有外光圈，是因为按钮处于选中状态，和选中状态的 NSTextField 一样。
 btn.focusRingType = NSFocusRingTypeNone;
 
 6、NSTextField 和 NSAppearanceNameVibrantLight 样式的冲突
 解决方案：只要将 NSPopover 的主题改为 NSAppearanceNameAqua 即可：
 self.view.appearance = NSAppearance(named: NSAppearanceNameAqua)

***/
+ (instancetype)sx_popverWith:(NSAppearanceName)name contentVC:(NSViewController *)vc behavior:(NSPopoverBehavior)popoverBehavior{
    NSPopover *popover = [[NSPopover alloc] init];
    popover.appearance = [NSAppearance appearanceNamed:name];
    popover.contentViewController = vc;
    popover.behavior = popoverBehavior;
    return popover;
}

@end
