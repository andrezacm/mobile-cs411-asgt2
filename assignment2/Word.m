//
//  Word.m
//  assignment2
//
//  Created by Andreza da Costa Medeiros on 1/28/15.
//  Copyright (c) 2015 Andreza da Costa Medeiros. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Word.h"

@implementation Word

-(BOOL) isAnagram:(NSString *)newWord
{
  if ([newWord length] != [_anagrams[0] length]) {
    return NO;
  }
  
  NSString * newWordLowercase = [newWord lowercaseString];
  NSString * anagramLowercase = [_anagrams[0] lowercaseString];
  
  NSCountedSet * newWordSet = [[NSCountedSet alloc] init];
  NSCountedSet * anagramSet = [[NSCountedSet alloc] init];
  
  for (int i = 0; i < [anagramLowercase length]; i++){
    [newWordSet addObject:@([newWordLowercase characterAtIndex:i])];
    [anagramSet addObject:@([anagramLowercase characterAtIndex:i])];
  }
  
  if ([newWordSet isEqual:anagramSet]) {
    [_anagrams addObject:newWord];
    self._anagramsSize++;
    return YES;
  }
  
  return NO;
}

-(id) initWithWord:(NSString *)word
{
  self = [super init];
  if (self) {
    _wordSize     = [word length];
    _anagrams     = [NSMutableArray arrayWithObjects:word, nil];
    self._anagramsSize = 1;
  }
  return self;
}

-(void) printAnagrams
{
  for (NSString * word in _anagrams){
    NSLog(@"> %@", word);
  }
}

//-(NSInteger)anagramsSize
//{
//  return _anagramsSize;
//}

@end


