//
//  ScoreKeeper.m
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-27.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString*)updateScore:(BOOL)correct{
    if(correct){self.numberRight += 1;}
    else {self.numberWrong += 1;}
    float percentage = (100 * self.numberRight) / (self.numberRight+self.numberWrong);
    return [NSString stringWithFormat: @"Right: %ld, Wrong: %ld, Percent %2.f ", self.numberRight, self.numberWrong, percentage];

}


@end
