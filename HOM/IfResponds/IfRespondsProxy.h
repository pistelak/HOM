//
//  IfRespondsProxy.h
//  HOM
//
//  Created by Radek Pistelak on 25/01/2018.
//  Copyright © 2018 pistelak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IfRespondsProxy : NSProxy

- (nonnull instancetype)initWithTarget:(nonnull id)target;

@end
