//
//  ScoreKeeper.h
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-27.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property (assign) NSInteger numberRight;
@property (assign) NSInteger numberWrong;

-(NSString*)updateScore:(BOOL)correct;


@end
