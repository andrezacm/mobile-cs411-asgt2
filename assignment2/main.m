//
//  main.m
//  assignment2
//
//  Created by Andreza da Costa Medeiros on 1/27/15.
//  Copyright (c) 2015 Andreza da Costa Medeiros. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Anagram.h"
#import "NSString+CodeWordExtension.h"
#include <objc/runtime.h>

NSInteger sortAnagrams (id a1, id a2){
  return [a1 countWords] - [a2 countWords];
}

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    NSDate * beginTime = [NSDate date];
    
    NSString * file = @"/Users/andreza/workspace/mobile-cs411/mobile-cs411-asgt2/assignment2/words";
    NSError  * error;
    NSString * fileContents = [NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:&error];
    
    if (error) { NSLog(@"Reading error %@", error); }
    
    NSMutableDictionary * anagramsDictionary = [[NSMutableDictionary alloc] init];
    
    for (NSString *line in [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]]) {
      
      NSString * newWordLowercase = [line lowercaseString];
      NSString * codedNWLowercase = [newWordLowercase codeWord];
      
      if (anagramsDictionary[codedNWLowercase]){
        Anagram * anagram = [anagramsDictionary valueForKey:codedNWLowercase];
        [anagram addWord:line];
      } else {
        Anagram * anagram = [[Anagram alloc] initWithWord:line];
        [anagramsDictionary setObject:anagram forKey:codedNWLowercase];
      }
    }
    
    NSArray * sortedAnagrams = [[NSArray alloc] initWithArray:[anagramsDictionary allValues]];
    sortedAnagrams = [[anagramsDictionary allValues] sortedArrayUsingFunction:sortAnagrams context:NULL];
    
    NSInteger countSortedAnagrams = [sortedAnagrams count];
    
    NSLog([[sortedAnagrams[countSortedAnagrams -1] words] description]);
    
    NSLog(@"%f", [beginTime timeIntervalSinceNow]);
    
  }
  return 0;
}

