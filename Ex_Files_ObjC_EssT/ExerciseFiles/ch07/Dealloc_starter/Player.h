//
//  Player.h
//  initializerDemo
//
//  Created by Simon Allardice on 11/1/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property int score;

-(id) initWithInteger:(int) initialScore;

@end
