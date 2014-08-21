//
//  Player.m
//  InitializerDemo
//
//  Created by Lin Dong on 8/20/14.
//  Copyright (c) 2014 Lin Dong. All rights reserved.
//

#import "Player.h"

@implementation Player

- (void) dealloc
{
  // takes care of clean-up
}

- (instancetype)init
{
    return [self initWithInteger:100];
}

- (instancetype)initWithInteger: (int) initialScore
{
    self = [super init];
    if (self) {
        _score = initialScore;
    }
    return self;
}

@end
