//
//  Word.h
//  assignment2
//
//  Created by Andreza da Costa Medeiros on 1/28/15.
//  Copyright (c) 2015 Andreza da Costa Medeiros. All rights reserved.
//

@interface Word : NSObject
{
  NSMutableArray * _anagrams;
  NSInteger        _wordSize;
}
  @property NSInteger _anagramsSize;

  -(BOOL)      isAnagram:(NSString *)word;
  -(id)        initWithWord:(NSString *)word;
  -(void)      addAnagrams:(NSString *)word;
  -(void)      printAnagrams;
  //-(NSInteger) anagramsSize;

@end