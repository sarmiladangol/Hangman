//
//  HangmanWordList.m
//  Hangman
//
//  Created by Sarmila on 5/31/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "HangmanWordList.h"

@implementation HangmanWordList
-(NSString *)pickRandomWord{
    int randomNumber = arc4random_uniform(_wordList.count);
    return [_wordList objectAtIndex:randomNumber];
}

-(id)init{
    self = [super init];
    self.wordList = @[@"grape", @"application", @"macintosh", @"apple", @"iPhone", @"iPod", @"macBook", @"projector", @"programmer", @"developer", @"apprentice", @"detroit", @"exercise", @"assignment", @"robb", @"erika", @"whiteboard", @"classroom", @"deadline", @"compile",];
    return self;
}
@end
