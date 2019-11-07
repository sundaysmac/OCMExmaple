//
//  NSImageView+SQ.h
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/11/7.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSImageView (SQ)


+ (instancetype)sx_imageView;

+ (instancetype)sx_imageViewWithFrame:(CGRect)frame imgFrameStyle:(NSImageFrameStyle)imgFStyle wantsL:(BOOL)wantsLayer bgColor:(NSColor *)bgColor animate:(BOOL)animate imgAlign:(NSImageAlignment)align editable:(BOOL)isEdit allowCutCopyPaste:(BOOL)ccp imgScale:(NSImageScaling)scale canDrawSubViewsIntoLayer:(BOOL)isCanDrawSub;

+ (instancetype)sx_imageViewWithFrame:(CGRect)frame imgFrameStyle:(NSImageFrameStyle)imgFStyle wantsL:(BOOL)wantsLayer bgColor:(NSColor *)bgColor imgAlign:(NSImageAlignment)align;

+ (instancetype)sx_imageViewGifWithFrame:(CGRect)frame imgScale:(NSImageScaling)scale canDrawSubviewsIntoLayer:(BOOL)isCanDrawSub;


- (void)sq_imageViewWithFrame:(CGRect)frame imgFrameStyle:(NSImageFrameStyle)imgFStyle wantsL:(BOOL)wantsLayer bgColor:(NSColor *)bgColor animate:(BOOL)animate imgAlign:(NSImageAlignment)align editable:(BOOL)isEdit allowCutCopyPaste:(BOOL)ccp imgScale:(NSImageScaling)scale canDrawSubViewsIntoLayer:(BOOL)isCanDrawSub;

- (void)sq_imageViewWithFrame:(CGRect)frame imgFrameStyle:(NSImageFrameStyle)imgFStyle wantsL:(BOOL)wantsLayer bgColor:(NSColor *)bgColor imgAlign:(NSImageAlignment)align;

- (void)sq_imageViewGifWithFrame:(CGRect)frame imgScale:(NSImageScaling)scale canDrawSubviewsIntoLayer:(BOOL)isCanDrawSub;

@end

NS_ASSUME_NONNULL_END
