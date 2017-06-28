//
//  AdditionQuestion.h
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-27.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (assign, nonatomic) NSInteger firstNumber;
@property (assign, nonatomic) NSInteger secondNumber;
@property (assign, nonatomic) NSInteger answer;
@property (nonatomic, strong) NSString *question;
@property (assign) BOOL answeredCorrect;
@property (strong, nonatomic) NSDate *startTime;
@property (strong, nonatomic) NSDate *endTime;

-(double)answerTime;



@end
