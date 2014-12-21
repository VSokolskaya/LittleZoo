//
// Created by admin on 12/17/14.
// Copyright (c) 2014 admin. All rights reserved.
//

#import "BaseAnimal.h"


@implementation BaseAnimal {

}

@synthesize weight = _weight;
@synthesize size = _size;


- (instancetype)initWithWeight:(NSNumber *)weight size:(D3Size *)size {
    self = [super init];
    if (self) {
        _weight = weight;
        _size = size;
    }

    return self;
}

+ (instancetype)animalWithWeight:(NSNumber *)weight size:(D3Size *)size {
    return [[self alloc] initWithWeight:weight size:size];
}

- (BOOL)feed:(id <Food>)food {
    if (food == self)
        return NO;
    return YES;
}

- (BOOL)play:(id)toy {
    return NO;
}

- (FoodType)type {

    return FoodType_Meat;
}
@end