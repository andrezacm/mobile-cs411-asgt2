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
  words = [[NSMutableArray alloc] init];
  [words addObject:aWord];
  wordCoded = [aWord codeWord];
  return self;
}

-(void)addWord:(NSString *)aWord
{
  [words addObject:aWord];
}

-(int) countWords
{
  return (int)[words count];
}

-(NSArray *) words
{
  return (NSArray *)words;
}

@end