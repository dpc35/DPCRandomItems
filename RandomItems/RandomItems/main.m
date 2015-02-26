//
//  main.m
//  RandomItems
//
//  Created by David Cappa on 2/24/15.
//  Copyright (c) 2015 University of Pittsburgh INFSCI 1073. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
}
        
        
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
      
        // Destroy the mutable array object
        items = nil;
    }
    return 0;
}
