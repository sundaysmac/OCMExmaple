//
//  NSMenu+SQ.h
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/11/7.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMenu (SQ)


+ (instancetype)sx_menuWithTitle:(NSString *)title;
/***
 dict --[ {"title":"title","keyE":"keyE"},]
 */
+ (instancetype)sx_menuWihtTitle:(NSString *)title itemDict:(NSArray *)dict withAction:(SEL)selector;
/***
dict --[ [title,"keyE"]]
*/
+ (instancetype)sx_menuWihtTitle:(NSString *)title itemArray:(NSArray*)iArr withAction:(SEL)selector;



/***
 dict --[ {"title":"title","keyE":"keyE"},]
 */
- (void)sq_AddMenuItemWithitemDict:(NSArray *)dict withAction:(SEL)selector;
/***
dict --[ [title,"keyE"]]
*/
- (void)sq_AddMenuItemWithitemArray:(NSArray*)iArr withAction:(SEL)selector;

@end

NS_ASSUME_NONNULL_END
