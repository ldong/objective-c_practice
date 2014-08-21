//
//  MathUtil.m
//  Class
//
//  Created by Lin Dong on 8/20/14.
//  Copyright (c) 2014 Lin Dong. All rights reserved.
//

#import "MathUtil.h"

@implementation MathUtil
- (int)timesTen:(int)number{
    NSLog(@"You passed number %i", number);
    return number*10;
}

-(int)addNumber:(int)a toNumber:(int)b{
    return a+b;
}


@end
