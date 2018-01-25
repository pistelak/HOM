[![Build Status](https://travis-ci.org/pistelak/HOM.svg?branch=master)](https://travis-ci.org/pistelak/HOM)

## Higher Order Messaging 

# WIP 

### `ifResponds`

```Objective-C
[[self.delegate ifResponds] aSelector]; 
```

can be used instead of: 

```Objective-C
if ([self.delegate respondsToSelector:@selector(aSelector)]) {
    [self.delegate performSelector:@selector(aSelector) withObject:self];
}
```

### `collect`

```Objective-C
- (NSArray *)customerNames {
    return [self.allCustomers collect] name]; 
}
```

can be used instead of: 

```Objective-C
- (NSArray *)customerNames {
   
    NSMutableArray *allNames = [NSMutableArray alloc] init];

    for (Customer *customer in [self allCustomers]) {
        [allNames addObject:customer.name];
    }

    return [allNames copy]; 
}
```

where `Customer`: 
```Objective-C
@interface Customer: NSObject
@property (nonatomic, copy, nonnull) NSString *name; 
@end 
```


More informations: 

- Marcel Weiher and Stéphane Ducasse. 2005. Higher order messaging. In Proceedings of the 2005 symposium on Dynamic languages (DLS '05). ACM, New York, NY, USA, 23-34.

- http://bou.io/HigherOrderFunctionsInObjectiveC.html#fn:1

- (https://en.wikipedia.org/wiki/Higher_order_message)
