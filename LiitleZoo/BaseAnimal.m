//
// Created by admin on 12/17/14.
// Copyright (c) 2014 admin. All rights reserved.
//

#import "BaseAnimal.h"
#import "D3Size.h"


@implementation BaseAnimal {

}

@synthesize weight = _weight;
@synthesize size = _size;
@synthesize species = _species;
@synthesize name = _name;

- (instancetype)initWithSize: (D3Size *)size weight: (NSNumber *)weight
                     species: (NSString *)species andName:(NSString *)name{

    self = [super init];
    if (self) {
        _weight = weight;
        _size = size;
        _name = name;
        _species = species;
    }
    return self;
}

- (instancetype)initWithSize:(D3Size *)size weight:(NSNumber *)weight {

    return [self initWithSize:size weight:weight species: @"speices" andName:@"name"];
}

- (instancetype)initWithSpecies:species andName:(NSString *)name{

    return [self initWithSize:[[D3Size alloc] initWithHeight:@(10) width:@(27) length:@(89)] weight:@(100) species: species andName:name];
}

+ (instancetype)animalWithSpecies:(NSString *)species andName:(NSString *)name {
    return [[self alloc] initWithSpecies:species andName:name];
}

+ (instancetype)animalWithWeight:(NSNumber *)weight size:(D3Size *)size {
    return [[self alloc] initWithSize:[size copy] weight:weight];
}

+ (instancetype)animalWithWeight: (NSNumber *) weight size: (D3Size *)size species: (NSString *)species andName: (NSString *)name
{
    return [[self alloc]initWithSize:[size copy] weight:weight species:@"species" andName: @"name"];
}


- (NSString *)description
{
    NSMutableString *description = [NSMutableString stringWithFormat:@"<%@: ", NSStringFromClass([self class])];
    [description appendFormat:@"self.weight=%g", self.weight];
    [description appendFormat:@", self.size=%g", self.size];
    [description appendFormat:@", self.name=%@", self.name];
    [description appendFormat:@", self.species=%@", self.species];
    [description appendString:@">"];
    return description;
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