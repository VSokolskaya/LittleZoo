//
// Created by admin on 12/14/14.
// Copyright (c) 2014 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "BaseAnimal.h"

@class D3Size;


@interface Predator : BaseAnimal <NSCopying>
- (id)copyWithZone:(NSZone *)zone;

- (BOOL)isEqual:(id)other;

- (BOOL)isEqualToPredator:(Predator *)predator;

- (NSUInteger)hash;


@end