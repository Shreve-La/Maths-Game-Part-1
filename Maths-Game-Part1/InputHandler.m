//
//  InputHandler.m
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-27.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString*)handleInput:(NSString*)usrInput andQuestion:(Question*)question{
    
    question.userAnswer  = [usrInput integerValue];

    if (question.userAnswer == question.answer){
        question.answeredCorrect = YES;
        return @"Correct!";

    }else{
        question.answeredCorrect = NO;
        return(@"Wrong");

    }
}


@end
