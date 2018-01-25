//
//  NSObject+IfResponds.m
//  HOM
//
//  Created by Radek Pistelak on 25/01/2018.
//  Copyright © 2018 pistelak. All rights reserved.
//

#import "NSObject+IfResponds.h"
#import "IfRespondsProxy.h"

@implementation NSObject (IfResponds)

- (id)ifResponds {
    return [[IfRespondsProxy alloc] initWithTarget:self];
}

@end
