//
//  InputHandler.m
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-27.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString*)handleInput:(NSString*)usrInput andQuestion:(AdditionQuestion*)additionQuestion{

    if ([usrInput integerValue] == additionQuestion.answer){
        additionQuestion.answeredCorrect = YES;
        return @"Correct-o-mundo!'";

    }else{
        additionQuestion.answeredCorrect = NO;
        return(@"Wrong");

    }
}


@end
