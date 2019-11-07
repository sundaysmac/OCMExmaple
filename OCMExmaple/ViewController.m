//
//  ViewController.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/10/25.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "ViewController.h"

#import "NSPopover+SQ.h"

@interface ViewController()

@property (nonatomic, strong) NSButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    //NSPopover
    NSPopover *popover = [NSPopover sx_popverWith:NSAppearanceNameAqua contentVC:[NSViewController new] behavior:NSPopoverBehaviorTransient];
    [popover showRelativeToRect:[self.button bounds] ofView:self.button preferredEdge:NSRectEdgeMaxY];
    
    
}
//使用recommendedLayerContentsScale(_:)方法来获取系统为图片计算推荐的长宽值
- (void)udpateLayerWithIagmeInWindow1:(NSImage *)image forLayer:(CALayer *)layer inWindow:(NSWindow *)window{
    CGFloat desiredScaleFactor = [window backingScaleFactor];
    CGFloat actualScaleFactor = [image recommendedLayerContentsScale:desiredScaleFactor];
    id layerContents = [image layerContentsForContentsScale:actualScaleFactor];
    [layer setContents:layerContents];
    [layer setContentsScale:actualScaleFactor];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
