//
//  AppDelegate.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/10/25.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "AppDelegate.h"


@interface AppDelegate ()

@property (nonatomic, strong) NSStatusItem *statusItem;
@property (nonatomic, strong) NSPopover *firstPopover;


@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    
    
    //打开app
    [[NSAppleEventManager sharedAppleEventManager] setEventHandler:self andSelector:@selector(handleURLEvent:withReplyEvent:) forEventClass:kInternetEventClass andEventID:kAEGetURL];
    //NSStatusItem
    self.statusItem = [NSStatusItem sx_statusBarWithhightLightModel:YES itemLeng:NSSquareStatusItemLength];
    self.statusItem.image = [NSImage imageNamed:@"swift18"];
    self.statusItem.toolTip = @"tip";
    [self.statusItem setAction:@selector(statusOnclick:)];
    [self.statusItem.button setAction:@selector(statusButtonOnClick:)];
}
- (NSPopover *)firstPopover {
    if (!_firstPopover) {
        _firstPopover =  _firstPopover=[[NSPopover alloc]init];
                
                _firstPopover.appearance = [NSAppearance appearanceNamed:NSAppearanceNameAqua];
                
                _firstPopover.contentViewController = [NSViewController new];
                _firstPopover.behavior = NSPopoverBehaviorTransient;
    }
    return _firstPopover;
}
- (void)statusOnclick:(NSStatusItem *)sender{
    
}
/**NSStatusBarButton & 给 statusItem 添加 popover
  popover 弹出时，必须showRelativeToRect，我们无法获取 statusItem.bounds。
 经过查看，statusItem 内部有个 .button，类型为 NSStatusBarButton，所以给这个 button 添加监听方法。
statusItem 和 statusItem.button 都绑定 action,最先绑定的哪个，被后面那个覆盖。
 */
- (void)statusButtonOnClick:(NSButton *)btn{
    
    NSLog(@"statusButtonOnClick ----- ");
    
    [self.firstPopover showRelativeToRect:[btn bounds] ofView:btn preferredEdge:NSRectEdgeMaxY];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


//打开本app
- (void)handleURLEvent:(NSAppleEventDescriptor*)theEvent withReplyEvent:(NSAppleEventDescriptor*)replyEvent {
    
    NSString* path = [[theEvent paramDescriptorForKeyword:keyDirectObject] stringValue];
    
    [[NSAlert alertWithMessageText:@"URL Request" defaultButton:@"OK" alternateButton:nil otherButton:nil informativeTextWithFormat:@"%@", path] runModal];
}






@end
