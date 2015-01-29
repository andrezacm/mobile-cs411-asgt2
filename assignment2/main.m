//
//  main.m
//  assignment2
//
//  Created by Andreza da Costa Medeiros on 1/27/15.
//  Copyright (c) 2015 Andreza da Costa Medeiros. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Word.h"

NSInteger inSort(id obj1, id obj2, void * context)
{
  if ([obj1 count] > [obj2 count]) {
    return NSOrderedAscending;
  } else if ([obj1 count] < [obj2 count]){
    return NSOrderedDescending;
  } else {
    return NSOrderedSame;
  }
}


int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    //NSString* file = [[NSBundle mainBundle] pathForResource:@"words" ofType:@"strings"];
    NSString * file = @"/Users/andreza/workspace/mobile-cs411/mobile-cs411-asgt2/assignment2/words2";
    NSError  * error;
    NSString *fileContents = [NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:&error];
    
    if (error) { NSLog(@"Reading error %@", error); }
    
    //NSMutableArray * words = [[NSMutableArray alloc] init];
    NSMutableDictionary * dictionary = [[NSMutableDictionary alloc] init];
    
    for (NSString *line in [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]]) {
     
      NSString * newWordLowercase = [line lowercaseString];
      
      NSMutableArray *letterArray = [NSMutableArray array];
      
      [newWordLowercase enumerateSubstringsInRange:NSMakeRange(0, [newWordLowercase length])
                                  options:(NSStringEnumerationByComposedCharacterSequences)
                               usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                 [letterArray addObject:substring];
                               }];
      
      NSCountedSet * newWordSet   = [[NSCountedSet alloc] initWithArray:letterArray];
      
//      for (int i = 0; i < [newWordLowercase length]; i++){
//        [newWordSet addObject:@([newWordLowercase characterAtIndex:i])];
//      }
      
      if (dictionary[newWordSet]){
        [dictionary[newWordSet] addObject:line];
      } else {
        NSMutableArray * anagrams = [[NSMutableArray alloc] initWithObjects:line, nil];
        [dictionary setObject:anagrams forKey:newWordSet];
      }
    }
    
    NSArray * sortedAnagrams;
    sortedAnagrams = [[dictionary allValues] sortedArrayUsingFunction:inSort context:NULL];
    
    NSLog([sortedAnagrams description]);

  }
  return 0;
}

