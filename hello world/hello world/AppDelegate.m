//
//  AppDelegate.m
//  hello world
//
//  Created by gaoshan on 16/7/19.
//  Copyright © 2016年 gaoshan. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"
#import "IOS.h"
#import "Java.h"

extern int i;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSLog(@"%d , %s",i ,__func__);
    
    
    Person *p = [[Person alloc] init];
    p.dic = [@{@"123":@[@"23",@"45"],@"abc":@"456",@"def":@"789"} mutableCopy];
    NSLog(@"%@",p.dic);
    [p test];
    p.arr = [@[@"123",@"456",@"895"] mutableCopy];
    [p test];
    
    
    Person<IOS *> *p1 = [[Person alloc] init];
    p1.language = [[IOS alloc] init];
    p1.hh = [[IOS alloc] init];
    
    
    Person<Java *> *p2 = [[Person alloc] init];
    p2.language = [[Java alloc] init];
    p2.hh = [[Java alloc] init];
    
    Person<Language *> *p3 = [[Person alloc] init];
    p3.language = [[Language alloc] init];
    
    //子类强转父类 是协变 子类中肯定包含父类的所有东西 是和谐的变化
//    p3 = p1;
    //父类强转子类 是逆变 父类不一定有子类的东西 所以是不和谐的变化
    p2 = p3;
    
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
