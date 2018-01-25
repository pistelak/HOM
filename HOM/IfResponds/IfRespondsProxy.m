//
//  IfRespondsProxy.m
//  HOM
//
//  Created by Radek Pistelak on 25/01/2018.
//  Copyright © 2018 pistelak. All rights reserved.
//

#import "IfRespondsProxy.h"

@implementation IfRespondsProxy
{
    id _target;
}

- (instancetype)initWithTarget:(id)target {
    _target = target;
    return self;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    
    // Try to forward the message to the real target otherwise handle it ourselves
    
    if ([_target respondsToSelector:aSelector]) {
        return _target;
    } else {
        return nil;
    }
}

#pragma mark - "Losing" the message

// Next methods are called only when real target doesn't understand the message.

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSString *methodSignature = [NSString stringWithFormat:@"%s%s%s", @encode(void), @encode(id), @encode(SEL)];
    return [NSMethodSignature signatureWithObjCTypes:[methodSignature UTF8String]];
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    // do nothing
}

@end
