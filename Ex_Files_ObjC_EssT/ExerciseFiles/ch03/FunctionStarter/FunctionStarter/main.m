//
//  main.m
//  FunctionStarter
//
//  Created by Simon Allardice on 10/28/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // a simple loop
        for ( int i = 1 ; i < 5000 ; i++ ) {
            if (i % 5 == 0) {
                continue;  // jump back to the top.
            }
            NSLog(@"The value of the index is %i", i);
        }
        
    }
    return 0;
}

