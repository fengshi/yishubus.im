//
//  ArtIMessageViewController.m
//  ArtIMessage
//
//  Created by shi feng on 13-5-23.
//  Copyright (c) 2013年 yishubus. All rights reserved.
//

#import "ArtIMessageViewController.h"
#import "IMMessageViewController.h"
#import "IMAddressBookController.h"

@interface ArtIMessageViewController ()

@end

@implementation ArtIMessageViewController

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
    
	self.tabBarController = [[UITabBarController alloc] init];
    [self.tabBarController.view setFrame:self.view.bounds];
    
    IMMessageViewController *messageController = [[IMMessageViewController alloc] initWithNibName:@"IMMessageViewController" bundle:nil];
    UINavigationController *messageNav = [[UINavigationController alloc] initWithRootViewController:messageController];
    messageNav.navigationBar.tintColor = [UIColor colorWithRed:50/255.0 green:50/255.0 blue:50/255.0 alpha:0];
    
    IMAddressBookController *bookController = [[IMAddressBookController alloc] initWithNibName:@"IMAddressBookController" bundle:nil];
    UINavigationController *bookNav = [[UINavigationController alloc] initWithRootViewController:bookController];
    bookNav.navigationBar.tintColor = [UIColor colorWithRed:50/255.0 green:50/255.0 blue:50/255.0 alpha:0];
    
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:messageNav,bookNav, nil];
    
    [self.view addSubview:self.tabBarController.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) shouldAutorotate
{
    return NO;
}
@end
