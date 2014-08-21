//
//  main.m
//  PassByValueStarter
//
//  Created by Simon Allardice on 10/30/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>

// new function - takes one int and adds to it
void performAddition(int scoreParameter) {
    scoreParameter += 5000;
    NSLog(@"Inside the function, the value is now: %i", scoreParameter);
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        // define a new variable
        int highScore = 10;
        
        // pass it into the function
        performAddition(highScore);
        
        // write out the value
        NSLog(@"back in main, highScore is : %i", highScore);
        
    }
    return 0;
}
