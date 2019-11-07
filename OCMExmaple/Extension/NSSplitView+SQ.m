//
//  NSSplitView+SQ.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/10/31.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "NSSplitView+SQ.h"

#import <AppKit/AppKit.h>


@implementation NSSplitView (SQ)

+ (instancetype)sx_splitView{
    NSSplitView *splitView = [[NSSplitView alloc] init];
    return splitView;
}

+ (instancetype)sx_splitViewWithFrame:(CGRect)frame{
    NSSplitView *splitView = [[NSSplitView alloc] initWithFrame:frame];
    return splitView;
}

+ (instancetype)sx_splitViewWantLayer:(BOOL)wantS{
    NSSplitView *splitView = [self sx_splitViewWantLayer:wantS];
    return splitView;
}

+ (instancetype)sx_splitViewWithFrame:(CGRect)frame wantLayer:(BOOL)wantS{
    NSSplitView *splitView = [self sx_splitViewWithFrame:frame];
    splitView.wantsLayer = wantS;
    return splitView;
}

+ (instancetype)sx_splitViewWithLView:(NSView *)leftView rView:(NSView *)rightView autoResizesSubViews:(BOOL)autoReizesSubViews autoMask:(NSAutoresizingMaskOptions)autoresingMask{
    NSSplitView *splitView = [self sx_splitViewWantLayer:YES];
    [splitView addSubview:leftView];
    [splitView addSubview:rightView];
    splitView.autoresizesSubviews = autoReizesSubViews;
    splitView.autoresizingMask = autoresingMask;
    //NSViewWidthSizable | NSViewHeightSizable
    return splitView;
}
@end
