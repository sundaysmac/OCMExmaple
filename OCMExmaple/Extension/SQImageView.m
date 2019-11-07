//
//  SQImageView.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/11/7.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "SQImageView.h"

@implementation SQImageView
/**
 外部调用
 BaseImageView *imgBg = [[BaseImageView alloc] init];
 imgBg.backgroundColor = [NSColor redColor];
 **/
- (void)setBackgroundColor:(NSColor *)backgroundColor {
    _backgroundColor = backgroundColor;
    [self setNeedsDisplay:YES];
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    // 这个地方必须要判断，否则会被填充为黑色
    if (_backgroundColor) {
        NSRect rect = self.frame;
        [_backgroundColor set];
        [NSBezierPath fillRect:rect];
    }
    
    // Drawing code here.
}

@end
