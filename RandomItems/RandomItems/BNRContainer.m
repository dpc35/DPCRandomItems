//
//  BNRContainer.m
//  RandomItems
//
//  Created by David Cappa on 2/25/15.
//  Copyright (c) 2015 University of Pittsburgh INFSCI 1073. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (instancetype)initWithContainerName:(NSString *)name
                       valueInDollars:(int)value
{
    self = [super initWithItemName:name
                    valueInDollars:value
                      serialNumber:@""];
    
    if (self) {
        _containedItems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSMutableArray *)containedItems
{
    return _containedItems;
}

- (int)totalValueInDollars
{
    int valueOfSubitems = 0;
    
    for (BNRItem *item in self.containedItems) {
        valueOfSubitems += item.valueInDollars;
    }
    
    return (valueOfSubitems + self.valueInDollars);
}

- (NSString *)description
{
    NSString *descriptionString = [NSString stringWithFormat:@"%@: Worth $%d\n%@",
                                   self.itemName,
                                   [self totalValueInDollars],
                                   [self.containedItems description]];
    
    return descriptionString;
}

@end
