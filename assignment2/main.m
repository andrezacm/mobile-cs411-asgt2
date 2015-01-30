//
//  main.m
//  assignment2
//
//  Created by Andreza da Costa Medeiros on 1/27/15.
//  Copyright (c) 2015 Andreza da Costa Medeiros. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Anagram.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    
    /*
    NSDate * beginTime = [NSDate date];
    
    //NSString* file = [[NSBundle mainBundle] pathForResource:@"words" ofType:@"strings"];
    NSString * file = @"/Users/andreza/workspace/mobile-cs411/mobile-cs411-asgt2/assignment2/words";
    NSError  * error;
    NSString *fileContents = [NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:&error];
    
    if (error) { NSLog(@"Reading error %@", error); }
    
     NSArray * words = [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];

//    NSArray * sortedWords;
//    sortedWords = [words sortedArrayUsingFunction:sortWordsByLength context:NULL];
//    NSLog([sortedWords description]);
    
    
    for (NSString *line in words) {
     
      NSString * newWordLowercase = [line lowercaseString];
      
      //NSLog([sortedletter description]);
      
//      [newWordLowercase enumerateSubstringsInRange:NSMakeRange(0, [newWordLowercase length])
//                                  options:(NSStringEnumerationByComposedCharacterSequences)
//                               usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
//                                 [letterArray addObject:substring];
//                               }];
//      
      NSCountedSet * newWordSet   = [[NSCountedSet alloc] init];
      
      for (int i = 0; i < [newWordLowercase length]; i++){
        [newWordSet addObject:@([newWordLowercase characterAtIndex:i])];
      }
      
      NSInteger index = -1;
      
      if ([words2 containsObject:newWordSet]){
        index = [words2 indexOfObject:newWordSet];
      }
      
      if (index > -1) {
        [words3[index] addObject:line];
      } else {
        [words2 addObject:newWordSet];
        [words3 addObject:[[NSMutableArray alloc] initWithObjects:line, nil]];
      }
      
      //[words2 addObject:newWordSet];
      
//      if (dictionary[newWordSet]){
//        [dictionary[newWordSet] addObject:line];
//      } else {
//        NSMutableArray * anagrams = [[NSMutableArray alloc] initWithObjects:line, nil];
//        [dictionary setObject:anagrams forKey:newWordSet];
//      }
    }
    
    NSLog([words3 description]);
    
//    NSArray * sortedAnagrams;
//    sortedAnagrams = [[dictionary allValues] sortedArrayUsingFunction:inSort context:NULL];
//    
//    NSLog([sortedAnagrams description]);
    
    NSLog(@"%f", [beginTime timeIntervalSinceNow]);
     */
  }
  return 0;
}

