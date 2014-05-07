//
//  WarCarftIII_Tests_10.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 7/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Unit.h"
#import "OCMock.h"

@interface WarCarftIII_Tests_10 : XCTestCase

@end

@implementation WarCarftIII_Tests_10
{
    Unit *unit;
    Unit *enemy;
}

- (void)setUp
{
    [super setUp];
    unit = [[Unit alloc]initWithHP:100 AP:3];
    enemy = [[Unit alloc]initWithHP:40 AP:5];
}

- (void)tearDown
{
    unit = nil;
    enemy = nil;
    [super tearDown];
}

-(void)testDamageShouldReduceTheUnitHealthPointsByTheAttackPower
{
    [unit damage:12];
    int result = unit.health;
    int expected = 88;
    XCTAssertEqual(expected,result);
}

-(void)testAttackShouldDealDamageToEnemy
{
    id enemy = [OCMockObject mockForClass:[Unit class]];
    [[enemy expect] damage:3];
    [unit attack:enemy];
}

@end
