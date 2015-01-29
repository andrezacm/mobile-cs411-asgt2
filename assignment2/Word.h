//
//  Word.h
//  assignment2
//
//  Created by Andreza da Costa Medeiros on 1/28/15.
//  Copyright (c) 2015 Andreza da Costa Medeiros. All rights reserved.
//

@interface Word : NSObject
{
  NSString * _word;
  NSArray  * _anagrams;
  NSInteger _wordSize;
  NSInteger _anagramsSize;
}

  -(BOOL) isAnagram:(NSString *)word;
  -(id)   initWithWord:(NSString *)word;
  -(void) printAnagrams;

@end