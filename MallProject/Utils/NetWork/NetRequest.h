//
//  NetRequest.h
//  MallProject
//
//  Created by YRL on 2019/6/5.
//  Copyright © 2019 heaven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Response.h"

NS_ASSUME_NONNULL_BEGIN



@interface NetRequest : NSObject

typedef void(^HttpSuccessBlock)(Response *response);
typedef void(^HttpFailedBlock)(NSError *error);

+ (NetRequest *)shareInstance;

/**
 Get网络请求
 
 @param url 请求地址
 @param success 成功后的回调
 @param failed 失败后的回调
 */
- (void)httpRequestGetWithUrl:(NSString *)url success:(HttpSuccessBlock)success failed:(HttpFailedBlock)failed;

/**
 Post网络请求
 
 @param url 请求地址
 @param params 参数
 @param success 成功后的回调
 @param failed 失败后的回调
 */
- (void)httpRequestPostWithUrl:(NSString *)url params:(NSDictionary *)params success:(HttpSuccessBlock)success failed:(HttpFailedBlock)failed;

@end

NS_ASSUME_NONNULL_END
