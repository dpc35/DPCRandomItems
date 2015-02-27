//
//  BNRContainer.h
//  RandomItems
//
//  Created by David Cappa on 2/25/15.
//  Copyright (c) 2015 University of Pittsburgh INFSCI 1073. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem

// Create an immutable array of subitems for the new BNRContainer class
{
    NSMutableArray *_containedItems;
}

// Initializer for BNRContainer
- (instancetype)initWithContainerName:(NSString *)name
                       valueInDollars:(int)value;

- (NSMutableArray *)containedItems;

-(int)totalValueInDollars;

@end

// Credit to the Big Nerd Ranch iOS Programming Forums for help.