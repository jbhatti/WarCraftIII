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
    if ([self canTrainFootman]) {
    _gold = self.gold - 135;
    _food = self.food - 2;
    return [[Footman alloc] init];
    }
    return nil;
}

- (BOOL)canTrainFootman {
    if (self.food < 2 || self.gold < 135) {
        return NO;
    } else {
    return YES;
    }
}

@end
