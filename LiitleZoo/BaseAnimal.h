//
// Created by admin on 12/17/14.
// Copyright (c) 2014 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"
#import "Animal.h"


@interface BaseAnimal : NSObject <Animal, Food>

- (instancetype)initWithWeight:(NSNumber *)weight size:(D3Size *)size;

+ (instancetype)animalWithWeight:(NSNumber *)weight size:(D3Size *)size;

@end