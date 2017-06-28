//
//  Question.m
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-27.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _firstNumber = arc4random_uniform(100)+10;
        _secondNumber = arc4random_uniform(100)+10;
        _startTime = [NSDate date];
    }
    return self;
}

-(void)generateQuestion {
}


//-(NSString*)question{
//        _question = [NSString stringWithFormat:@"%ld + %ld = ?", self.firstNumber, self.secondNumber];
//    return _question;
//}

-(NSInteger)answer{
        _answer = _firstNumber + _secondNumber;
        _endTime = [NSDate date];
        return _answer;
}

-(double)answerTime{
    return self.endTime.timeIntervalSinceReferenceDate - self.startTime.timeIntervalSinceReferenceDate;
}


@end
