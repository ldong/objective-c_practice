//
//  main.m
//  initializerDemo
//
//  Created by Simon Allardice on 11/1/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Player *playerObject = [[Player alloc] init];
        NSLog(@"The score is %i", [playerObject score]);
        
        Player *secondPlayer = [[Player alloc] initWithInteger:9999];
        NSLog(@"The score is %i", [secondPlayer score]);
    }
    return 0;
}

