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

-(BOOL) isAnagram:(NSString *)word
{
  return false;
}

-(id) initWithWord:(NSString *)word
{
  self = [super init];
  if (self) {
    _word = word;
    _wordSize = [word length];
  }
  return self;
}

-(void) printAnagrams
{}

@end


