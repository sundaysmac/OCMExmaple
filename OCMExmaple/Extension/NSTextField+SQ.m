//
//  NSTextField+SQ.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/11/12.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "NSTextField+SQ.h"

#import <AppKit/AppKit.h>


@implementation NSTextField (SQ)

//设置placehodle的颜色
- (void)sqSetPlaceHolder:(NSString *)palceHolder color:(NSColor *)tipTextColor {
    if (tipTextColor == nil) {
        tipTextColor = [NSColor colorWithRed:224/255 green:224/255 blue:224/255 alpha:1];
    }
    NSFont *font = self.font;
    NSDictionary *attrs = [NSDictionary dictionaryWithObjectsAndKeys:font,
                               NSFontAttributeName,
                               tipTextColor,
                           NSForegroundColorAttributeName, nil];
    NSAttributedString* attributedString = [[NSAttributedString alloc] initWithString:palceHolder attributes:attrs];
    [self setPlaceholderAttributedString:attributedString];
}


@end
