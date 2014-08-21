//
//  Player.h
//  InitializerDemo
//
//  Created by Lin Dong on 8/20/14.
//  Copyright (c) 2014 Lin Dong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

- (instancetype) initWithInteger: (int) initialScore;

@property int score;

@end
