//
//  JSONResponseSerializerWithData.m
//  UThing
//
//  Created by LCJaeson on 2017/7/27.
//  Copyright © 2017年 UThing. All rights reserved.
//

#import "JSONResponseSerializerWithData.h"

@implementation JSONResponseSerializerWithData

- (id)responseObjectForResponse:(NSURLResponse *)response data:(NSData *)data error:(NSError *__autoreleasing  _Nullable *)error
{
    id JSONObject = [super responseObjectForResponse:response data:data error:error];
    
    if (*error != nil) {
        NSMutableDictionary *userInfo = [(*error).userInfo mutableCopy];
        
        if (data) {
            userInfo[JSONResponseSerializerWithDataKey] = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];;
        }else{
            userInfo[JSONResponseSerializerWithDataKey] = @"http错误没有返回响应数据";
        }
        
        
        NSError *newError = [NSError errorWithDomain:(*error).domain code:(*error).code userInfo:userInfo];
        (*error) = newError;
    }
        

    
    return (JSONObject);
}

@end
