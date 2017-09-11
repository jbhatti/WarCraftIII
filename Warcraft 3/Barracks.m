//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"

@implementation Barracks

-(instancetype)init{
    _gold = 1000;
    _food = 80;
    
    return self;
}

-(Footman *)trainFootman {
    _gold = self.gold - 135;
    _food = self.food - 2;
    Footman *newTrainFootman = [[Footman alloc] init];
    return newTrainFootman;
    
}

@end
