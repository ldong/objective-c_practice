//
//  main.m
//  ArchivingDemo
//
//  Created by Simon Allardice on 11/2/13.
//  Copyright (c) 2013 lynda.com, inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
      Employee *bob = [[Employee alloc]init];
      [bob setFirstName:@"Bob"];
      [bob setLastName:@"Roberson"];
      [bob setHireDate:[NSDate date]];
      [bob setEmployeeNumber:1];
      
      Employee *john = [[Employee alloc]init];
      john.firstName= @"John";
      john.lastName = @"Doe";
      john.employeeNumber = 2;
      john.hireDate = [NSDate dateWithString:@"2010-03-34 09:00:00 -0800"];
    
      NSLog(@"First Employee %@", bob);
      NSLog(@"Second Employee %@", john);
     
      NSMutableArray *employees =[[NSMutableArray alloc]init];
      [employees addObject:bob];
      [employees addObject:john];
      // archieve plist default
//      [NSKeyedArchiver archiveRootObject:bob toFile:@"/Users/ldong/Documents/bob.plist"];
//      [NSKeyedArchiver archiveRootObject:john toFile:@"/Users/ldong/Documents/john.plist"];
      [NSKeyedArchiver archiveRootObject:employees toFile:@"/Users/ldong/Documents/employee.plist"];
    }
    return 0;
}

