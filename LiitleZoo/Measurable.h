//
// Created by admin on 12/17/14.
// Copyright (c) 2014 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class D3Size;

@protocol Measurable <NSObject>

@property (nonatomic, strong)NSNumber* weight;
@property (nonatomic, strong)D3Size* size;



@end