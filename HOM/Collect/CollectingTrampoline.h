//
//  CollectingTrampoline.h
//  HOM
//
//  Created by Radek Pistelak on 25/01/2018.
//  Copyright © 2018 Kiwi.com. All rights reserved.
//

@import Foundation;

@interface CollectingTrampoline : NSProxy

- (instancetype)initWithTargetArray:(NSArray *)targetArray;

@end
