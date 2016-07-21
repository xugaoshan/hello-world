//
//  ViewController.m
//  hello world
//
//  Created by gaoshan on 16/7/19.
//  Copyright © 2016年 gaoshan. All rights reserved.
//

#import "ViewController.h"

const int i = 2;

@interface ViewController ()

@property(nonatomic ,strong ,nonnull) NSString *icon;
@property(nonatomic , strong) NSString *_Nonnull icon1;
@property(nonatomic , strong) NSString *__nonnull icon2;

@property(nonatomic , assign) int age;

@property(nonatomic ,strong ,nullable) NSString *icon3;
@property(nonatomic , strong) NSString *_Nullable icon4;
@property(nonatomic , strong)__kindof NSString *__nullable icon5;

@property(nonatomic , strong ,null_resettable) __kindof NSString * icon6;
@property(nonatomic , strong ,null_unspecified) NSString *icon7;


@end

@implementation ViewController

-(void)setIcon6:(__kindof NSString *)icon6
{
    
}

-(void)test2:(int const *)p
{
    NSLog(@"%d",*p);
}

-(nullable __kindof NSString *)test:(nonnull __kindof NSString *)name
{
    return nil;
}

-(NSString *_Nullable)test1:(NSString *_Nullable)name
{
    return nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"hello world");
    NSLog(@"hello world1");
    NSLog(@"hello world2");
    
    int a = 2;
    [self test2:&a];
    
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
}

@end
