//
//  PredatorTest.m
//  LiitleZoo
//
//  Created by admin on 12/14/14.
//  Copyright (c) 2014 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Predator.h"
#import "D3Size.h"
#import "Rabbit.h"
#import "Vegetable.h"

@interface PredatorTest : XCTestCase

@end

@implementation PredatorTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testFeed {
    D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(27) length:@(89)];
    Predator *predator  = [Predator predatorWithWeight:@(100) size:size];

    Rabbit *food = [[Rabbit alloc]init];
    food.weight = @(3);
    food.size = [D3Size sizeWithHeight:@(30) width:@(20) length:@(50)];

    BOOL result = [predator feed:food];

    XCTAssert(result, @"Predators eat meat");

    Vegetable *carrot = [[Vegetable alloc]init];
    result = [predator feed:carrot];
    XCTAssert(!result, @"Predators do not eat vegetables");

}

- (void)testFeed_self{

    D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(27) length:@(89)];
    Predator *predator  = [Predator predatorWithWeight:@(100) size:size];

    BOOL result = [predator feed:predator];
    XCTAssert(!result, @"Predators do not eat themselves");
}

- (void) testFeed_otherBigAnimal{

    D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(27) length:@(89)];
    Predator *predator  = [Predator predatorWithWeight:@(100) size:size];

    D3Size *size1 = [[D3Size alloc] initWithHeight:@(15) width:@(50) length:@(120)];
    Predator *big_animal  = [Predator predatorWithWeight:@(200) size:size1];

    BOOL result = [predator feed:big_animal];
    XCTAssert(!result, @"Predator can't eat someone that big!");

}

@end
