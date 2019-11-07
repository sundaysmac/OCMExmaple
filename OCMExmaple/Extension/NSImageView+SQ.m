//
//  NSImageView+SQ.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/11/7.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "NSImageView+SQ.h"

#import <AppKit/AppKit.h>


@implementation NSImageView (SQ)

+ (instancetype)sx_imageView{
    NSImageView *imageView = [[NSImageView alloc] init];
    imageView.wantsLayer = YES;
    return imageView;
}

+ (instancetype)sx_imageViewWithFrame:(CGRect)frame imgFrameStyle:(NSImageFrameStyle)imgFStyle wantsL:(BOOL)wantsLayer bgColor:(NSColor *)bgColor animate:(BOOL)animate imgAlign:(NSImageAlignment)align editable:(BOOL)isEdit allowCutCopyPaste:(BOOL)ccp imgScale:(NSImageScaling)scale canDrawSubViewsIntoLayer:(BOOL)isCanDrawSub{
    NSImageView *imageView = [self sx_imageView];
    imageView.frame = frame;
    imageView.imageFrameStyle = imgFStyle;
    imageView.wantsLayer = wantsLayer;
    imageView.layer.backgroundColor = bgColor.CGColor;
    imageView.animates = animate;
    imageView.imageAlignment = align;
    imageView.editable = isEdit;
    imageView.allowsCutCopyPaste = ccp;
    imageView.imageScaling = scale;
    imageView.canDrawSubviewsIntoLayer = isCanDrawSub;
    return imageView;
}

+ (instancetype)sx_imageViewWithFrame:(CGRect)frame imgFrameStyle:(NSImageFrameStyle)imgFStyle wantsL:(BOOL)wantsLayer bgColor:(NSColor *)bgColor imgAlign:(NSImageAlignment)align{
    NSImageView *imageView = [self sx_imageView];
    imageView.frame = NSRectFromCGRect(frame);
    imageView.imageFrameStyle = imgFStyle;
    imageView.wantsLayer = wantsLayer;
    imageView.layer.backgroundColor = bgColor.CGColor;
    imageView.imageAlignment = align;
    return imageView;
}

+ (instancetype)sx_imageViewGifWithFrame:(CGRect)frame imgScale:(NSImageScaling)scale canDrawSubviewsIntoLayer:(BOOL)isCanDrawSub{
    NSImageView *imageView = [self sx_imageView];
    imageView.frame = NSRectFromCGRect(frame);
    imageView.imageScaling = scale;
    imageView.animates = YES;
    imageView.canDrawSubviewsIntoLayer = isCanDrawSub;
    return imageView;
}


- (void)sq_imageViewWithFrame:(CGRect)frame imgFrameStyle:(NSImageFrameStyle)imgFStyle wantsL:(BOOL)wantsLayer bgColor:(NSColor *)bgColor animate:(BOOL)animate imgAlign:(NSImageAlignment)align editable:(BOOL)isEdit allowCutCopyPaste:(BOOL)ccp imgScale:(NSImageScaling)scale canDrawSubViewsIntoLayer:(BOOL)isCanDrawSub{

    self.frame = frame;
    self.imageFrameStyle = imgFStyle;
    self.wantsLayer = wantsLayer;
    self.layer.backgroundColor = bgColor.CGColor;
    self.animates = animate;
    self.imageAlignment = align;
    self.editable = isEdit;
    self.allowsCutCopyPaste = ccp;
    self.imageScaling = scale;
    self.canDrawSubviewsIntoLayer = isCanDrawSub;

}

- (void)sq_imageViewWithFrame:(CGRect)frame imgFrameStyle:(NSImageFrameStyle)imgFStyle wantsL:(BOOL)wantsLayer bgColor:(NSColor *)bgColor imgAlign:(NSImageAlignment)align{

    self.frame = NSRectFromCGRect(frame);
    self.imageFrameStyle = imgFStyle;
    self.wantsLayer = wantsLayer;
    self.layer.backgroundColor = bgColor.CGColor;
    self.imageAlignment = align;

}

- (void)sq_imageViewGifWithFrame:(CGRect)frame imgScale:(NSImageScaling)scale canDrawSubviewsIntoLayer:(BOOL)isCanDrawSub{
    self.frame = NSRectFromCGRect(frame);
    self.imageScaling = scale;
    self.animates = YES;
    self.canDrawSubviewsIntoLayer = isCanDrawSub;
}
@end
