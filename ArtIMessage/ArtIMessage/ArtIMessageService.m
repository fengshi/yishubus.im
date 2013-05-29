//
//  ArtIMessageService.m
//  ArtIMessage
//
//  Created by shi feng on 13-5-29.
//  Copyright (c) 2013年 yishubus. All rights reserved.
//

#import "ArtIMessageService.h"
#import "NetWorkData.h"
#import "RequestURL.h"
#import "Constants.h"

@implementation ArtIMessageService

- (BOOL) isLogin:(NSString *)email password:(NSString *)pass
{
    // -- 1. 登录验证前删除本地登录内容
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults removeObjectForKey:@"mail"];
    [defaults removeObjectForKey:@"pass"];
    [defaults removeObjectForKey:@"id"];
    [defaults removeObjectForKey:@"nickName"];
    [defaults removeObjectForKey:@"type"];
    [defaults removeObjectForKey:@"headPhoto"];
    
    BOOL yesorno = [NetWorkData loginData:[RequestURL getUrlByKey:LOGIN_URL] email:email password:pass];
    return yesorno;
}
@end