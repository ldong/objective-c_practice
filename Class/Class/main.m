//
//  main.m
//  Class
//
//  Created by Lin Dong on 8/20/14.
//  Copyright (c) 2014 Lin Dong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "MathUtil.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Employee *employee = [[Employee alloc] init];
        [employee someMethod];
        
        MathUtil *util = [[MathUtil alloc]init];
        int result = [util timesTen:10];
        NSLog(@"result %i", result);
        
        int a = 10;
        int b = 20;
        result = [util addNumber:a toNumber:b];
        NSLog(@"result %i", result);
 
    }
    return 0;
}

