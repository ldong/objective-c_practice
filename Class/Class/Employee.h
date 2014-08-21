//
//  Employee.h
//  Class
//
//  Created by Lin Dong on 8/20/14.
//  Copyright (c) 2014 Lin Dong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property NSString *name;
@property NSDate *hireDate;
@property int employeeNumber;

- (void) someMethod;
// setters
- (int) timeStamp: (int) num;

// returning/ accpeting object types
- (NSString *) createMessage: (NSString *) input;

// multiple params
- (int) addNumber: (int) a  toNumber: (int) b;

@end
