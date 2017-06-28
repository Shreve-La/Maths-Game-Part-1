//
//  Multiplication.m
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-28.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "Multiplication.h"

@implementation Multiplication

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self gererateQuestion];
    }
    return self;
}




-(void)gererateQuestion{
    super.question = [NSString stringWithFormat:@"%ld * %ld = ?", super.firstNumber, super.secondNumber];
    super.answer = super.firstNumber * super.secondNumber;
}






@end
