//
//  InputHandler.h
//  Maths-Game-Part1
//
//  Created by swcl on 2017-06-27.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface InputHandler : NSObject


+(NSString*)handleInput:(NSString*)usrInput andQuestion:(Question*)question;

@end
