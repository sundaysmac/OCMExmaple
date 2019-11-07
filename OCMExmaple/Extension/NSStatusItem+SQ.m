//
//  NSStatusItem+SQ.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/11/7.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "NSStatusItem+SQ.h"

#import <AppKit/AppKit.h>


@implementation NSStatusItem (SQ)


/***
    注意 length 应选择 NSSquareStatusItemLength，否则不显示。NSVariableStatusItemLength 用于自定义 statusItem, 见本文第 6 部分。
    状态栏高度为22，请注意图片尺寸。
    setHighlightMode, YES-有高亮效果（蓝色背景色）,NO - 点击时和没点击，没什么特别效果。
    ————————————————
    版权声明：本文为CSDN博主「菜鸟_伊织」的原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接及本声明。
    原文链接：https://blog.csdn.net/lovechris00/article/details/78011718
 */
+ (instancetype)sx_statusBar{
    //获取系统单例NSStatusBar对象
    NSStatusBar *statusBar = [NSStatusBar systemStatusBar];
    NSStatusItem *statusItem = [statusBar statusItemWithLength:NSSquareStatusItemLength];
    
    return statusItem;
}
/**
 model = YES
 static const CGFloat NSVariableStatusItemLength = -1.0;
 static const CGFloat NSSquareStatusItemLength = -2.0;
 */
+ (instancetype)sx_statusBarWithhightLightModel:(BOOL)model itemLeng:(CGFloat)itemLength{
    NSStatusBar *statusBar = [NSStatusBar systemStatusBar];
    NSStatusItem *statusItem = [statusBar statusItemWithLength:NSSquareStatusItemLength];
    statusItem.highlightMode = model;
    return statusItem;
}

+ (instancetype)sx_statusBarWithhightLightModel:(BOOL)model itemLeng:(CGFloat)itemLength toolTip:(NSString *)tooltip{
    NSStatusBar *statusBar = [NSStatusBar systemStatusBar];
    NSStatusItem *statusItem = [statusBar statusItemWithLength:NSSquareStatusItemLength];
    statusItem.highlightMode = model;
    statusItem.toolTip = tooltip;
    return statusItem;
}


@end
