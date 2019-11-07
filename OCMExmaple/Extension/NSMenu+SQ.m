//
//  NSMenu+SQ.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/11/7.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "NSMenu+SQ.h"

#import <AppKit/AppKit.h>


@implementation NSMenu (SQ)

+ (instancetype)sx_menuWithTitle:(NSString *)title{
    NSMenu *menu = [[NSMenu alloc] initWithTitle:title];
    return menu;
}

/***
 dict --[ {"title":"title","keyE":"keyE"},]
 */
+ (instancetype)sx_menuWihtTitle:(NSString *)title itemDict:(NSArray *)dict withAction:(SEL)selector{
    NSMenu *menu = [self sx_menuWithTitle:title];
    for (int i = 0; i < dict.count; i++) {
        NSDictionary *subDict = dict[i];
        NSMenuItem *menuItem = [[NSMenuItem alloc] initWithTitle:subDict[@"title"] action:selector keyEquivalent:subDict[@"keyE"]];
        menuItem.tag = i;
        menuItem.target = menuItem;
        [menu addItem:menuItem];
    }
    return menu;
}
/***
dict --[ [title,"keyE"]]
*/
+ (instancetype)sx_menuWihtTitle:(NSString *)title itemArray:(NSArray*)iArr withAction:(SEL)selector{
    NSMenu *menu = [self sx_menuWithTitle:title];
    for (int i = 0; i < iArr.count; i++) {
        NSArray *subiArr = iArr[i];
        NSMenuItem *menuItem = [[NSMenuItem alloc] initWithTitle:subiArr[0] action:selector keyEquivalent:subiArr[1]];
        menuItem.tag = i;
        menuItem.target = menuItem;
        [menu addItem:menuItem];
    }
    return menu;
}


/***
 dict --[ {"title":"title","keyE":"keyE"},]
 */
- (void)sq_AddMenuItemWithitemDict:(NSArray *)dict withAction:(SEL)selector{
    for (int i = 0; i < dict.count; i++) {
        NSDictionary *subDict = dict[i];
        NSMenuItem *menuItem = [[NSMenuItem alloc] initWithTitle:subDict[@"title"] action:selector keyEquivalent:subDict[@"keyE"]];
        menuItem.tag = i;
        menuItem.target = menuItem;
        [self addItem:menuItem];
    }
}
/***
dict --[ [title,"keyE"]]
*/
- (void)sq_AddMenuItemWithitemArray:(NSArray*)iArr withAction:(SEL)selector{
    for (int i = 0; i < iArr.count; i++) {
        NSArray *subiArr = iArr[i];
        NSMenuItem *menuItem = [[NSMenuItem alloc] initWithTitle:subiArr[0] action:selector keyEquivalent:subiArr[1]];
        menuItem.tag = i;
        menuItem.target = menuItem;
        [self addItem:menuItem];
    }
}
@end
