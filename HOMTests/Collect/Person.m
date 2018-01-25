//
//  Person.m
//  HOMTests
//
//  Created by Radek Pistelak on 25/01/2018.
//  Copyright © 2018 Kiwi.com. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

#pragma mark - Equality

- (BOOL)isEqual:(id)other {
    if (other == self) {
        return YES;
    } else if (![super isEqual:other]) {
        return NO;
    } else {
        return [self isEqualToPerson:other];
    }
}

- (BOOL)isEqualToPerson:(Person *)other {
    return [self.name isEqualToString:other.name];
}

- (NSUInteger)hash {
    return [self.name hash];
}

@end
