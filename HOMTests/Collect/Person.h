//
//  Person.h
//  HOMTests
//
//  Created by Radek Pistelak on 25/01/2018.
//  Copyright © 2018 Kiwi.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

- (instancetype)initWithName:(NSString *)name;

@property (nonatomic, copy) NSString *name;

@end

NS_ASSUME_NONNULL_END
