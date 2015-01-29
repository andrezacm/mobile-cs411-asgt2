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
/*    NSString * file = @"/Users/andreza/workspace/mobile-cs411/mobile-cs411-asgt2/assignment2/words2";
    NSError  * error;
    NSString *fileContents = [NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:&error];
    
    NSLog(@"Reading error  %@", error);
    
    for (NSString *line in [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]]) {
      NSLog(line);
    }
*/
    Word * word = [[Word alloc] initWithWord:@"Test"];
    [word printAnagrams];
    
  }
  return 0;
}

