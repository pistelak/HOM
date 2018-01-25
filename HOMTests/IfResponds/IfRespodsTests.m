//
//  IfRespodsTests.m
//  HOMTests
//
//  Created by Radek Pistelak on 25/01/2018.
//  Copyright © 2018 pistelak. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSObject+IfResponds.h"

@protocol ExampleDelegate <NSObject>

- (void)implementedSelector;

@optional

- (void)uninplementedSelector;

@end

@interface Delegate: NSObject <ExampleDelegate>
@end

@implementation Delegate

- (void)implementedSelector { }

@end

@interface IfRespodsTests : XCTestCase

@end

@implementation IfRespodsTests

- (void)test_messageShouldBeSentWhenObjectUnderstand {
    
    Delegate *delegate = [[Delegate alloc] init];
 
    XCTAssertNoThrow([delegate implementedSelector]);
    
    XCTAssertNoThrow([[delegate ifResponds] implementedSelector]);
}

- (void)test_messageShouldNotBeSentWhenObjectDoesntUnderstand {
    
    Delegate *delegate = [[Delegate alloc] init];
    
    XCTAssertThrows([delegate uninplementedSelector]);
    
    XCTAssertNoThrow([[delegate ifResponds] uninplementedSelector]);
}

@end
