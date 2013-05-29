//
//  RequestURL.m
//  ArtIMessage
//
//  Created by shi feng on 13-5-24.
//  Copyright (c) 2013年 yishubus. All rights reserved.
//

#import "RequestURL.h"
#import "Constants.h"

@implementation RequestURL

+ (NSString *) getUrlByKey:(NSInteger)key
{
    switch (key) {
        case LOGIN_URL:
            return [ACTION_MAIN stringByAppendingString:@"websitMoblieAction.do?action=login"];
        default:
            break;
    }
    return nil;
}
@end