//
//  Person.h
//  hello world
//
//  Created by gaoshan on 16/7/20.
//  Copyright © 2016年 gaoshan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Language.h"

//__covariant
@interface Person<__contravariant  ObjectType> : NSObject

@property(nonatomic , strong)NSMutableDictionary<NSString *, NSString *> *dic;

@property(nonatomic , strong)NSMutableArray<NSString *> *arr;

@property(nonatomic , strong)ObjectType language;

@property(nonatomic , strong)Language *hh;

-(void)test;

@end
