//
//  main.m
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-27.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        
        while(gameOn){
            NSLog(@"Enter Text:");
            
            //Get User Input
            char inputChars[255];
            fgets(inputChars, 255, stdin);
            NSString *inputStr =  [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            NSLog(@"%@", inputStr);
            inputStr = [inputStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"%@", inputStr);
                        
            
        }
        
        
        
    }
    return 0;
}
