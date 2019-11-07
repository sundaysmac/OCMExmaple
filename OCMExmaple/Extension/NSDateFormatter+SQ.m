
//
//  NSDateFormatter+SQ.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/10/25.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "NSDateFormatter+SQ.h"

#import <AppKit/AppKit.h>


@implementation NSDateFormatter (SQ)


//yyyy-MM-dd HH:mm:ss
+ (instancetype)sx_dateFormatter:(NSString *)formaterStr{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = formaterStr;
    return formatter;
}

+ (NSString *)sx_dateStrWithFormater:(NSString *)formaterStr fromDate:(NSDate *)date{
    NSDateFormatter *fomatter = [self sx_dateFormatter:formaterStr];
    NSString *dateStr = [fomatter stringFromDate:date];
    return dateStr;
}

@end
