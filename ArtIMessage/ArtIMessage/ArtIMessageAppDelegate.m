//
//  ArtIMessageAppDelegate.m
//  ArtIMessage
//
//  Created by shi feng on 13-5-23.
//  Copyright (c) 2013年 yishubus. All rights reserved.
//

#import "ArtIMessageAppDelegate.h"
#import "ArtIMessageViewController.h"
#import "LoginViewController.h"

@implementation ArtIMessageAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    CLLocationManager *location = [[CLLocationManager alloc] init];
    location.distanceFilter = 500.0f;
    location.desiredAccuracy = kCLLocationAccuracyHundredMeters;
    location.delegate = self;
    
    [location startUpdatingLocation];
    
    NSString *login = [[NSUserDefaults standardUserDefaults] objectForKey:@"mail"];
    login = @"abc";
//    self.window.rootViewController = con;
    
    if (!login) {
        LoginViewController *loginController = [[LoginViewController alloc] init];
        self.window.rootViewController = loginController;
    } else {
        ArtIMessageViewController *con = [[ArtIMessageViewController alloc] init];
        self.window.rootViewController = con;
    }
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void) locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    if (locations != nil) {
        if ([locations count] == 2) {
            CLLocation *nowLocation = [locations objectAtIndex:1];
            NSString *lat = [[NSString alloc] initWithFormat:@"%g",nowLocation.coordinate.latitude];
            NSString *lng = [[NSString alloc] initWithFormat:@"%g",nowLocation.coordinate.longitude];

            [[NSUserDefaults standardUserDefaults] setObject:lat forKey:@"latitude"];
            [[NSUserDefaults standardUserDefaults] setObject:lng forKey:@"longitude"];

        } else {

            CLLocation *nowLocation = [locations objectAtIndex:0];
            NSString *lat = [[NSString alloc] initWithFormat:@"%g",nowLocation.coordinate.latitude];
            NSString *lng = [[NSString alloc] initWithFormat:@"%g",nowLocation.coordinate.longitude];

            [[NSUserDefaults standardUserDefaults] setObject:lat forKey:@"latitude"];
            [[NSUserDefaults standardUserDefaults] setObject:lng forKey:@"longitude"];

        }
    }
}

- (void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    [manager stopUpdatingLocation];
}
@end
