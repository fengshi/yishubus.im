//
//  IMAddressBookController.h
//  ArtIMessage
//
//  Created by shi feng on 13-5-23.
//  Copyright (c) 2013年 yishubus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IMAddressBookController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tView;

@end
