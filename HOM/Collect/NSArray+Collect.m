//
//  NSArray+Collect.m
//  HOM
//
//  Created by Radek Pistelak on 25/01/2018.
//  Copyright © 2018 pistelak. All rights reserved.
//

#import "NSArray+Collect.h"
#import "CollectingTrampoline.h"

@implementation NSArray (Collect)

- (id)collect {
    return [[CollectingTrampoline alloc] initWithTargetArray:self];
}

@end
