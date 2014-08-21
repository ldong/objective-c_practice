//
//  Player.m
//  initializerDemo
//
//  Created by Simon Allardice on 11/1/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import "Player.h"

@implementation Player

- (id)init
{
    self = [self initWithInteger:5000];
    return self;
}

- (id)initWithInteger:(int) initialScore
{
    self = [super init];
    if (self) {
        // custom
        _score = initialScore;
    }
    return self;
}

@end
