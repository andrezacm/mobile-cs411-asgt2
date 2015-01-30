//
//  Anagram.m
//  assignment2
//
//  Created by Andreza da Costa Medeiros on 1/29/15.
//  Copyright (c) 2015 Andreza da Costa Medeiros. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Anagram.h"
#import "NSString+CodeWordExtension.h"

@implementation Anagram

-(id)initWithWord:(NSString *)aWord
{
  //TODO
  return self;
}

-(BOOL)addWord:(NSString *)aWord
{
  BOOL rtn = NO;
  NSString * cw = [aWord codeWord];
  
  if ([cw compare:wordCoded]) {
    [words addObject:aWord];
    rtn = YES;
  }
  
  return rtn;
}

-(int)count
{
  return (int)[words count];
}

-(NSArray *) words
{
  return (NSArray *)words;
}

@end