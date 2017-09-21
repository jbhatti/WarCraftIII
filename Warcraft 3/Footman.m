//
//  Footman.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Footman.h"
#import "Unit.h"

@implementation Footman

-(instancetype)init{
    self.healthPoints = 60;
    self.attackPower = 10;
    return self;
}

- (void)attack:(Unit *)enemy withDamage:(int)damage {
    damage = self.attackPower;
    enemy.healthPoints = enemy.healthPoints - self.attackPower;
}

@end
