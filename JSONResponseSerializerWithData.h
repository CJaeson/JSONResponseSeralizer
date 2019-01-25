//
//  JSONResponseSerializerWithData.h
//  UThing
//
//  Created by LCJaeson on 2017/7/27.
//  Copyright © 2017年 UThing. All rights reserved.
//

#import "AFURLResponseSerialization.h"

static NSString * const JSONResponseSerializerWithDataKey = @"JSONResponseSerializerWithDataKey";

/**
 * 这是自定义的解析类 为了获取到更多的错误信息
 * 继承自AFJSONResponseSerializer
 */
@interface JSONResponseSerializerWithData : AFJSONResponseSerializer

@end
