//
//  main.m
//  RandomItems
//
//  Created by David Cappa on 2/24/15.
//  Copyright (c) 2015 University of Pittsburgh INFSCI 1073. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRContainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create the array
        NSMutableArray *items = [[NSMutableArray alloc] init];

        for (int i=0; i<10; i++) {
            items[i] = [BNRItem randomItem];
        }

BNRContainer *container = [[BNRContainer alloc] initWithContainerName:@"Big Container"
                                                       valueInDollars:50];
        
        for (BNRItem *item in items) {
            [container.containedItems addObject:item];
        }
        
        NSLog(@"%@", container);
        
        items = nil;
        container = nil;
        
    }
    return 0;
}
