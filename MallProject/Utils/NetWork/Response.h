//
//  Response.h
//  MallProject
//
//  Created by YRL on 2019/6/5.
//  Copyright © 2019 heaven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Response : NSObject

/**
 * resCode
 */
@property (nonatomic, copy) NSString *resCode;
/**
 * resMsg
 */
@property (nonatomic, copy) NSString *resMsg;
/**
 * data
 */
@property (nonatomic, copy) NSDictionary *data;

/**
 *  currTime
 */
@property (nonatomic, copy) NSString *resTime;

@end

NS_ASSUME_NONNULL_END
