//
// Created by admin on 12/17/14.
// Copyright (c) 2014 admin. All rights reserved.
//

#import "BaseAnimal.h"


@implementation BaseAnimal {

}

@synthesize weight = _weight;
@synthesize size = _size;

- (FoodType)type {

    return FoodType_Meat;
}

- (BOOL)feed:(id <Food>)food {
    return NO;
}

- (BOOL)play:(id)toy {
    return NO;
}


@end