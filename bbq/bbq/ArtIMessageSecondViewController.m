//
//  ArtIMessageSecondViewController.m
//  bbq
//
//  Created by shi feng on 13-5-23.
//  Copyright (c) 2013年 yishubus. All rights reserved.
//

#import "ArtIMessageSecondViewController.h"

@interface ArtIMessageSecondViewController ()

@end

@implementation ArtIMessageSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
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
