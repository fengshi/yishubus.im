//
//  LoginViewController.m
//  ArtIMessage
//
//  Created by shi feng on 13-5-24.
//  Copyright (c) 2013年 yishubus. All rights reserved.
//

#import "LoginViewController.h"
#import "ArtIMessageViewController.h"
#import "ArtIMessageService.h"


@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)loginAction:(id)sender {
    NSString *mail = self.userTextField.text;
    NSString *password = self.passTextField.text;
    
    ArtIMessageService *service = [[ArtIMessageService alloc] init];
    BOOL isOrno = [service isLogin:mail password:password];
    if (isOrno) {
        ArtIMessageViewController *con = [[ArtIMessageViewController alloc] init];
        self.view.window.rootViewController = con;
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"登录失败!" message:@"用户名或密码输入错误!" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
    }

}
@end
