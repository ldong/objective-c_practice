//
//  main.m
//  SwitchExample
//
//  Created by Simon Allardice on 10/28/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // create a variable
        int stormCategory = 4; //
        
        // sometime later, we'll check it (using if statements)
        
        if (stormCategory == 1) {
            NSLog(@"Time to get indoors.");
        }
        
        if (stormCategory == 2) {
            NSLog(@"Extensive damage - run and hide!");
        }
        
        if (stormCategory == 3) {
            NSLog(@"Devastating damage! Oh no!");
        }
        
        if (stormCategory == 4 || stormCategory == 5) {
            NSLog(@"Catastrophic damage! Game over, man!");
        }
        
        if (stormCategory < 1 || stormCategory > 5) {
            NSLog(@"Readings are off the scale. We haven't encountered this phenomenon before!");
        }

        
    }
    return 0;
}

