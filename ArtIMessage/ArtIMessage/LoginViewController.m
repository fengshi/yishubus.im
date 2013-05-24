//
//  LoginViewController.m
//  ArtIMessage
//
//  Created by shi feng on 13-5-24.
//  Copyright (c) 2013年 yishubus. All rights reserved.
//

#import "LoginViewController.h"
#import "ArtIMessageViewController.h"

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
    ArtIMessageViewController *con = [[ArtIMessageViewController alloc] init];
    self.view.window.rootViewController = con;
}
@end
