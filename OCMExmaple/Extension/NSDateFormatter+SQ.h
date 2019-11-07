//
//  NSDateFormatter+SQ.h
//  OC
//
//  Created by 曹亮亮 on 2019/10/25.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDateFormatter (SQ)
//yyyy-MM-dd HH:mm:ss
+ (instancetype)sx_dateFormatter:(NSString *)formaterStr;

+ (NSString *)sx_dateStrWithFormater:(NSString *)formaterStr fromDate:(NSDate *)date;
@end

NS_ASSUME_NONNULL_END
