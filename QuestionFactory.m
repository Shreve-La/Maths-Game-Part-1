//
//  QuestionFactory.m
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-28.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionNames = @[@"Addition", @"Subtraction", @"Division", @"Multiplication"];
    }
    return self;
}



-(Question*)generateRandomQuestion{
    NSUInteger rando = arc4random_uniform(4);
//    rando = 0;
    NSString* className = self.questionNames[rando];
    Question *newQuestion = [[NSClassFromString(className) alloc]init];
    return newQuestion;
}


@end
