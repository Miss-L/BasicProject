//
//  UserInfo.h
//  MallProject
//
//  Created by YRL on 2019/6/5.
//  Copyright © 2019 heaven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, UserGender) {
    UserGenderUnKnow = 0,
    UserGenderMale,
    UserGenderFemale
};

@interface UserInfo : NSObject

// 用户ID
@property (nonatomic, assign) long long userId;
// 头像
@property (nonatomic, copy) NSString *photo;
// 姓名
@property (nonatomic, copy) NSString *name;
// 昵称
@property (nonatomic, copy) NSString *nickName;
// 性别
@property (nonatomic, assign) UserGender sex;

@end

NS_ASSUME_NONNULL_END
