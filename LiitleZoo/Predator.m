//
// Created by admin on 12/14/14.
// Copyright (c) 2014 admin. All rights reserved.
//

#import "Predator.h"
#import "D3Size.h"
#import "Food.h"


@implementation Predator {

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

+ (instancetype)predatorWithWeight:(NSNumber *)weight size:(D3Size *)size {
    return [[self alloc] initWithWeight:weight size:size];
}


- (BOOL)feed:(id <Food>)food {
 float volume1 = [food.size volume].floatValue;
 float volume2 = 2*([self.size volume].floatValue);
    if([super feed: food]) {
        if ((food.type == FoodType_Meat)&&(volume1<=volume2))
            return YES;
    }
    return NO;
}

- (BOOL)play:(id)toy {
    return NO;
}

@end