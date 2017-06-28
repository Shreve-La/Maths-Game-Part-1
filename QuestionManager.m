//
//  QuestionManager.m
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-28.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"
@implementation QuestionManager



- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
        
    }
    return self;
}


-(NSString*)timeOutput{
    double totalTime = 0;
    double averageTime = 0;
    double totalQuestions = self.questions.count;
    for (Question* question in self.questions) {
        totalTime += question.answerTime;
    }
    averageTime = totalTime / totalQuestions;
    NSString *returnString = [NSString stringWithFormat:@"Total time: %f, average time: %f", totalTime, averageTime];
    return returnString;
}

@end
