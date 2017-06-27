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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        
        while(gameOn){
            //Generate and ask an addition question
            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] init];
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
            NSLog(@"%@", result);
    }
    }
    return 0;
}
