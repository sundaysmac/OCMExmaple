//
//  NSView+SQ.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/11/7.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "NSView+SQ.h"

#import <AppKit/AppKit.h>


@implementation NSView (SQ)

- (void)addCorner:(CGFloat)cornerRadio{
    self.wantsLayer = YES;
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = cornerRadio;
}

@end
