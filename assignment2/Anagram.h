//
//  Anagram.h
//  assignment2
//
//  Created by Andreza da Costa Medeiros on 1/29/15.
//  Copyright (c) 2015 Andreza da Costa Medeiros. All rights reserved.
//

@interface Anagram : NSObject
{
  NSString       * wordCoded;
  NSMutableArray * words;
}

  -(id)        initWithWord:(NSString *)aWord;
  -(void)      addWord:(NSString *)aWord;
  -(int)       countWords;
  -(NSArray *) words;

@end
