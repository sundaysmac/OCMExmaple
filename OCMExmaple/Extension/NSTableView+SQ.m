//
//  NSTableView+SQ.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/10/25.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "NSTableView+SQ.h"

#import <AppKit/AppKit.h>


@implementation NSTableView (SQ)

- (NSTableView *)sq_tableView {
    NSTableView *tableView = [[NSTableView alloc] initWithFrame:CGRectZero];
    return tableView;
    
}
+ (void)sx_help:(NSTabView *)tableView withTabPostion:(NSTabPosition)tabPosistion border:(NSTabViewBorderType)tabViewborder{
    tableView.tabPosition = tabPosistion;
    tableView.tabViewBorderType = tabViewborder;
}

//添加多个tabItem
- (void)sq_ddItemFromArray:(NSArray *)itemArray{
 
}
@end
