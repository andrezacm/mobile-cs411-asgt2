//
//  main.m
//  assignment2
//
//  Created by Andreza da Costa Medeiros on 1/27/15.
//  Copyright (c) 2015 Andreza da Costa Medeiros. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Word.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    //NSString* file = [[NSBundle mainBundle] pathForResource:@"words" ofType:@"strings"];
    NSString * file = @"/Users/andreza/workspace/mobile-cs411/mobile-cs411-asgt2/assignment2/words2";
    NSError  * error;
    NSString *fileContents = [NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:&error];
    
    if (error) { NSLog(@"Reading error %@", error); }
    
    NSMutableArray * words = [[NSMutableArray alloc] init];
    
    for (NSString *line in [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]]) {
      
      if ([words count] == 0) {
        [words addObject:[[Word alloc] initWithWord:line]];
      } else {
        BOOL isAnagram = NO;
        
        
        for (id word in words){
          if([word isAnagram:line]){ isAnagram = YES; break;}
        }
        if (!isAnagram) { [words addObject:[[Word alloc] initWithWord:line]]; }
      }
    }
    
    NSInteger index = 0;
    NSInteger index2 = 0;
    NSInteger max   = 0;
    
    for (Word * word in words) {
      if (word._anagramsSize > max) {
        max = word._anagramsSize;
        index = index2;
      }
      index2++;
    }
    
    NSLog(@"> %lu", max);
    
    [words[index] printAnagrams];

  }
  return 0;
}

