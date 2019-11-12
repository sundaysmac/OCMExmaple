//
//  SQSearchField.m
//  OCMExmaple
//
//  Created by 曹亮亮 on 2019/11/12.
//  Copyright © 2019 曹亮亮. All rights reserved.
//

#import "SQSearchField.h"
#import "SQSearchFieldCell.h"

@implementation SQSearchField

+ (void)setCellClass:(Class)factoryId
{
    [super setCellClass:[SQSearchFieldCell class]];
}

+ (Class)cellClass
{
    return [SQSearchFieldCell class];
}

@end
