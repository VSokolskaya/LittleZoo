//
// Created by admin on 12/14/14.
// Copyright (c) 2014 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Food <NSObject>

typedef NS_ENUM(int, FoodType){
    FoodType_Grass,
    FoodType_Meat,
    FoodType_Other,

};
@property (nonatomic, readonly) FoodType type;

@end