//
//  main.m
//  MessagesExample
//
//  Created by Lin Dong on 8/19/14.
//  Copyright (c) 2014 Lin Dong. All rights reserved.
//

#import <Foundation/Foundation.h>

void func();
void extracted_function(int highScore);
void printStringFunction(NSString* msg);


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        func();
//        int
//        float
//        double
//        char
//        BOOL
//        NSString
//        NSDate
        
        long long int myLongInt= 100000000;
        long long myAnotherLongInt = 1000000;
        unsigned int myUnsignedInt = 10000000;
        unsigned myAnotherUnsignedInt = 1000000;
        
        float myFloat = 33.3f;
        NSLog(@"Myfloat %f", myFloat);
        NSLog(@"Myfloat %e", myFloat);
        NSLog(@"Myfloat %g", myFloat);
        
        double myDouble = 33.3;
        NSLog(@"MyDouble %f", myDouble);
        NSLog(@"MyDouble %e", myDouble);
        NSLog(@"MyDouble %g", myDouble);

        // BOOL: YES or NO
        BOOL hasComplete = YES;

        char a = 'a';
        
        // enumnator
        enum state {
            past = 100, // past = -1
            now,  // now = 0
            future // future = 1
        };
        
        enum state currentState = past;
        // not going to work
        // enum state currState = what;
        NSLog(@"State is %i", currentState);
        
        // String Object
        // type   name      value
        NSString *message = @"hello";
             //  ^ pointer
        
        // class and object
        // ^blueprint ^house
        // ATTRIBUTES n BEHAVIOR
        // noun       n verb
        // i.e.
        // name         walk
        // height       jump
        // weight       run
        
        NSString *anotherMessage;
        anotherMessage = @"hello";
        printStringFunction(anotherMessage);

//      int a = myObject.someMethod(); -> int a = [myObject someMethond];
//      myObject.someMethod(arg); -> [myObject someMethond:arg];
//      myObject.someMethod("Hello", 11); -> [myObject insertString: @"Hello" atIndex: 11];
//      myObject.someMethod(getVal()); -> [myObject someMethod:[anotherObject anotherMethod]];


    }
    return 0;
}

void printStringFunction(NSString* msg){
    NSLog(@"The String you passed here is \"%@\"", msg);
}

void extracted_function(int highScore) {
    switch (highScore) {
        case 1:
            NSLog(@"Hi");
            break;
        default:
            break;
            
    }
}

void func(){
    
    int highScore = 100;
    NSLog(@"The score is %i", highScore);
    
    if(highScore == 100) {
        NSLog(@"highScore is 100");
    }
    
    if (highScore != 1 || highScore != 2){
        NSLog(@"highscore is neither 1 nor 2");
    }
    
    extracted_function(highScore);
    
    int a = 10;
    
    do {
        NSLog(@"a is %i", a);
        a++;
    } while(a < 20);
    
    
    for (int i = 0; i < 10; ++i) {
        if (i == 1){
            continue;
        }
        if (i == 3) {
            break;
        }
        NSLog(@"current loop %i", i);
    }
    
}