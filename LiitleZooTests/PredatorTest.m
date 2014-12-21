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
    Predator *predator  = [Predator animalWithWeight:@(100) size:size];

    Rabbit *food = [[Rabbit alloc]init];
    food.weight = @(3);
    food.size = [D3Size sizeWithHeight:@(10) width:@(10) length:@(10)];

    BOOL result = [predator feed:food];

    XCTAssert(result, @"Predators eat meat");

    Vegetable *carrot = [[Vegetable alloc]init];
    result = [predator feed:carrot];
    XCTAssert(!result, @"Predators do not eat vegetables");

}

- (void)testFeed_self{

    D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(27) length:@(89)];
    Predator *predator  = [Predator animalWithWeight:@(100) size:size];

    BOOL result = [predator feed:predator];
    XCTAssertFalse(result, @"Predators do not eat themselves");
}

- (void) testFeed_otherBigAnimal{

    D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(10) length:@(10)];
    Predator *predator  = [Predator animalWithWeight:@(100) size:size];

    D3Size *size1 = [[D3Size alloc] initWithHeight:@(25) width:@(10) length:@(10)];
    Predator *big_animal  = [Predator animalWithWeight:@(200) size:size1];

    BOOL result = [predator feed:big_animal];
    XCTAssertFalse (result, @"Predator can't eat someone that big!");

}

- (void) testIntegrity{

    D3Size *size = [[D3Size alloc] initWithHeight:@(10) width:@(27) length:@(89)];
    Predator *predator1  = [Predator animalWithWeight:@(100) size:size];

    Predator *predator2 = [Predator animalWithWeight:@(100) size:size];

    predator1.size = size;
    size.height=@(155);
    predator2.size = size;

    XCTAssertNotEqualObjects(predator1.size, predator2.size, @"Objects are equal, but should not be");
    NSLog(@"predator1 %@", predator1);
    NSLog(@"predator1 %@", predator2);
}

@end
