//
// Created by admin on 12/14/14.
// Copyright (c) 2014 admin. All rights reserved.
//

#import "Predator.h"
#import "D3Size.h"
#import "Food.h"


@implementation Predator {

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

- (id)copyWithZone:(NSZone *)zone {
    Predator *copy = [[[self class] allocWithZone:zone] init];

    if (copy != nil) {
        copy.weight = self.weight;
        copy.size = self.size;
    }

    return copy;
}

- (BOOL)isEqual:(id)other {
    if (other == self)
        return YES;
    if (!other || ![[other class] isEqual:[self class]])
        return NO;

    return [self isEqualToPredator:other];
}

- (BOOL)isEqualToPredator:(Predator *)predator {
    if (self == predator)
        return YES;
    if (predator == nil)
        return NO;
    if (self.weight != predator.weight && ![self.weight isEqualToNumber:predator.weight])
        return NO;
    if (self.size != predator.size && ![self.size isEqualToSize:predator.size])
        return NO;
    return YES;
}

- (NSUInteger)hash {
    NSUInteger hash = [self.weight hash];
    hash = hash * 31u + [self.size hash];
    return hash;
}

@end