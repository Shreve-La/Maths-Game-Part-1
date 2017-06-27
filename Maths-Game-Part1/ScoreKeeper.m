//
//  ScoreKeeper.m
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-27.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)updateScore:(BOOL)correct{
    if(correct){self.numberRight += 1;}
    else {self.numberWrong += 1;}

}


@end
