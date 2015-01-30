//
//  NSString+CodeWordExtension.m
//  assignment2
//
//  Created by Andreza da Costa Medeiros on 1/29/15.
//  Copyright (c) 2015 Andreza da Costa Medeiros. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+CodeWordExtension.h"

int compare(const void * l, const void * r){
  return *(unichar *)l - *(unichar *)r;
}

@implementation NSString (CodeWordExtension)

-(NSString *) codeWord
{
  NSInteger length = [self length];
  char * letters = (unichar *) calloc(sizeof(unichar), length);
  
  [self getCharacters:letters range:NSMakeRange(0, length)];
  qsort(letters, length, sizeof(unichar), compare);
  
  NSString * cw = [NSString stringWithCharacters:letters length:length];
  free(letters);
  return cw;
}

@end
