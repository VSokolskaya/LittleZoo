//
//  Animal.h
//  LiitleZoo
//
//  Created by admin on 12/14/14.
//  Copyright (c) 2014 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Measurable.h"

@class D3Size;
@protocol Food;

@protocol Animal <NSObject, Measurable>

-(BOOL) feed:(id<Food>)food;
-(BOOL) play:(id)toy;


@optional
-(BOOL) sleep;


@end
