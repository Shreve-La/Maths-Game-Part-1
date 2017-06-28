//
//  main.m
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-27.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        BOOL correct;
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [QuestionManager new];
        
        while(gameOn){
            //Generate and ask an addition question
            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] init];
            [questionManager.questions addObject:additionQuestion];
            NSLog(@"What is %@", additionQuestion.question);
            
            //Get User Input
            char inputChars[255];
            fgets(inputChars, 255, stdin);
            NSString *inputStr =  [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            inputStr = [inputStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([inputStr  isEqual: @"q"])
            {
                gameOn = NO;
                NSLog(@"Exiting the program");
                break;
            }
            
            NSString *result =[InputHandler handleInput:inputStr andQuestion:additionQuestion];
            if(additionQuestion.answeredCorrect){correct = YES;
            }else{ correct = NO; }
            
            NSLog(@"%@", result);
            NSString *score = [scoreKeeper updateScore:correct];
            NSLog(@"%@", score);
            double timeToAnswer = [additionQuestion answerTime];
            NSLog(@"Time to answer = %.02f seconds", timeToAnswer);
            NSString* timeStats = [questionManager timeOutput];
            NSLog(@"%@", timeStats);
            
    }
    }
    return 0;
}
