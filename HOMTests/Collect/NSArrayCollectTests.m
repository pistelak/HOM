//
//  NSArrayCollectTests.m
//  HOMTests
//
//  Created by Radek Pistelak on 25/01/2018.
//  Copyright © 2018 Kiwi.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"
#import "NSArray+Collect.h"

@interface NSArrayCollectTests : XCTestCase

@property (nonatomic, strong) Person *first;
@property (nonatomic, strong) Person *second;

@end

@implementation NSArrayCollectTests

static NSString * const kFirstName = @"John";
static NSString * const kSecondName = @"Andy";

- (void)setUp {
    [super setUp];
    
    self.first = [[Person alloc] initWithName:kFirstName];
    self.second = [[Person alloc] initWithName:kSecondName];
}

- (void)tearDown {
    self.first = nil;
    self.second = nil;
    
    [super tearDown];
}

- (void)testCollectNames {
    
    NSArray *persons = @[self.first, self.second];
    
    NSArray *expected = @[kFirstName, kSecondName];
    // Unfortunately, we lose information about type, which doesn't look consistent
    id actual = [[persons collect] name];
    
    XCTAssertEqualObjects(expected, actual);
}


@end
