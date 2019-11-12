//
//  SQTextField.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/11/12.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "SQTextField.h"

@implementation SQTextField
//第一响应时不希望全选
- (BOOL) becomeFirstResponder
{
    BOOL responderStatus = [super becomeFirstResponder];

    NSRange selectionRange = [[self  currentEditor] selectedRange];
    [[self currentEditor] setSelectedRange:NSMakeRange(selectionRange.length,0)];

    return responderStatus;
}


- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

@end
