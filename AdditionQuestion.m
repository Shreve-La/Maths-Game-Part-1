//
//  AdditionQuestion.m
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-27.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
          _firstNumber = arc4random_uniform(100)+10;
          _secondNumber = arc4random_uniform(100)+10;
    }
    return self;
}


-(NSString*)question{
    if(!_question){
        _question = [NSString stringWithFormat:@"%ld + %ld = ?", self.firstNumber, self.secondNumber];
    }
    return _question;
}

-(NSInteger)answer{
    if(!_answer){
        _answer = _firstNumber + _secondNumber;
    }
    return _answer;
}


@end
