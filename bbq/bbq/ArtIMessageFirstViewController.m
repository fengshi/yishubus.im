//
//  ArtIMessageFirstViewController.m
//  bbq
//
//  Created by shi feng on 13-5-23.
//  Copyright (c) 2013年 yishubus. All rights reserved.
//

#import "ArtIMessageFirstViewController.h"

@interface ArtIMessageFirstViewController ()

@end

@implementation ArtIMessageFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
