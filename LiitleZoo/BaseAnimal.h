//
// Created by admin on 12/17/14.
// Copyright (c) 2014 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"
#import "Animal.h"

@class D3Size;


@interface BaseAnimal : NSObject <Animal, Food>

- (instancetype)initWithSize:(D3Size *)size weight:(NSNumber *)weight;
- (instancetype)initWithSize: (D3Size *)size weight: (NSNumber *)weight
                     species: (NSString *)species andName:(NSString *)name; //designated Initializer
- (instancetype)initWithSpecies:speices andName:(NSString *)name;
+ (instancetype)animalWithWeight:(NSNumber *)weight size:(D3Size *)size;
+ (instancetype)animalWithWeight: (NSNumber *) weight size: (D3Size *)size species: (NSString *)species andName: (NSString *)name;

@end