//
//  AppDelegate.m
//  Lesson13MultiThreadingHome
//
//  Created by My mac on 03.03.16.
//  Copyright © 2016 Anatolii Zavialov. All rights reserved.
//

#import "AppDelegate.h"
#import "AZStudent.h"
#import "AZStudentNSOPeration.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    /*
     AZStudent* student1 = [[AZStudent alloc] init];
     student1.name = @"student1";
     AZStudent* student2 = [[AZStudent alloc] init];
     student2.name = @"student2";
     AZStudent* student3 = [[AZStudent alloc] init];
     student3.name = @"student3";
     AZStudent* student4 = [[AZStudent alloc] init];
     student4.name = @"student4";
     
     NSInteger number = 405;
     NSInteger range = 20000000;
     
     void(^myBlock)(NSString*) = ^(NSString* text) {
     NSLog(@"%@", text);
     
     };
     
     dispatch_async([AZStudent getQueue], ^{
     [student1 guessAnswer:number toRange:range andBlock:myBlock];
     });
     dispatch_async([AZStudent getQueue], ^{
     [student2 guessAnswer:number toRange:range andBlock:myBlock];
     });
     dispatch_async([AZStudent getQueue], ^{
     [student3 guessAnswer:number toRange:range andBlock:myBlock];
     });
     dispatch_async([AZStudent getQueue], ^{
     [student4 guessAnswer:number toRange:range andBlock:myBlock];
     });
     */
    AZStudentNSOPeration* student1 = [[AZStudentNSOPeration alloc] init];
    student1.name = @"student1";
    AZStudentNSOPeration* student2 = [[AZStudentNSOPeration alloc] init];
    student2.name = @"student2";
    AZStudentNSOPeration* student3 = [[AZStudentNSOPeration alloc] init];
    student3.name = @"student3";
    AZStudentNSOPeration* student4 = [[AZStudentNSOPeration alloc] init];
    student4.name = @"student4";
    
    NSInteger number = 405;
    NSInteger range = 20000000;
    
    void(^myBlock)(NSString*) = ^(NSString* text) {
        NSLog(@"%@", text);
        
    };
    
    [student1 guessAnswer:number toRange:range andBlock:myBlock];
    [student2 guessAnswer:number toRange:range andBlock:myBlock];
    [student3 guessAnswer:number toRange:range andBlock:myBlock];
    [student4 guessAnswer:number toRange:range andBlock:myBlock];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
