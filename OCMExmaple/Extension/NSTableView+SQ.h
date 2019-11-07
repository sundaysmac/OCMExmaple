//
//  NSTableView+SQ.h
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/10/25.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSTableView (SQ)

- (NSTableView *)sq_tableView;

+ (void)sx_help:(NSTabView *)tableView withTabPostion:(NSTabPosition)tabPosistion border:(NSTabViewBorderType)tabViewborder;
//添加多个tabItem
- (void)sq_ddItemFromArray:(NSArray *)itemArray;

@end


@interface NSTabViewItem (SQ)



@end


NS_ASSUME_NONNULL_END
