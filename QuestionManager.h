//
//  QuestionManager.h
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-28.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject

@property (strong, nonatomic) NSMutableArray *questions;


-(NSString*)timeOutput;

@end
