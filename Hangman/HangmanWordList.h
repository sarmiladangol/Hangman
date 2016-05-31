//
//  HangmanWordList.h
//  Hangman
//
//  Created by Sarmila on 5/31/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HangmanWordList : NSObject
@property(strong, nonatomic)NSArray *wordList;
-(NSString *)pickRandomWord;
@end
