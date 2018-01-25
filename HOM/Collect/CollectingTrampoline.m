//
//  CollectingTrampoline.m
//  HOM
//
//  Created by Radek Pistelak on 25/01/2018.
//  Copyright © 2018 pistelak. All rights reserved.
//

#import "CollectingTrampoline.h"

@implementation CollectingTrampoline
{
    NSArray *_targetArray;
}

- (instancetype)initWithTargetArray:(NSArray *)targetArray {
    _targetArray = targetArray;
    return self;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    return [[_targetArray firstObject] methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    
    id values = [[NSMutableArray alloc] init];
    
    for (id anObject in _targetArray) {
        __unsafe_unretained id retValue;
        [invocation invokeWithTarget:anObject];
        [invocation getReturnValue:&retValue];
        [values addObject:retValue];
    }
    
    values = [values copy];
    
    [invocation setReturnValue:&values];
    [invocation retainArguments];
}

@end
