# Objective C

Lets talk about Objective-C

## Notes
* `+` class method
* `-` instance method

```objective-c
NSString *message= @"Hello World";
message = [message uppercaseString];
NSLog(@"print %@", message);

NSDate *myDate = [NSDate date];
NSLog(@"NSDate %@", myDate);

NSDate *date;        // allocation
date = [NSDate new]; // initialization

// NSDate *date;
date = [NSDate alloc];
date = [NSDate init];

// NSDate *date = [[NSDate alloc] init];
Class *myObj = [[Class alloc] init];

// good for multiple initlization methods ~= multiple constructor
//        difference between
//date = [NSDate new]; // automatically release
//date = [[NSDate alloc]init]; // has to call release yourself

```

Class: interface(h file) and implementation(m file).

i.e.

```objective-c
//Old way
@interface Player: NSObject
{
    // instance variables (ivars)
    int _score;
}
- (int) score; // getter
- (void) setScore: (int) amount; //setter
@end

// New way
@interface Player : NSObject

@property int score;
// @property (attributs) type name;

@property (strong) NSString *firstName;
// default now
@property NSString *firstName;

// weak object will live as long as other strong object has holds of it
@property (weak) NSString *lastName;

// read-only, only generate getter method
@property (readonly) int *employeeID;

// deal with thread-safety
@property (nonatomic) NSString *fileName;

// what about some instance variables?
@implementation Player
{
    // instance variables - put at top of .m
    // good practice
    int somePrivateValue;
    // instance variable is unique to a class
}

@end
```


## nil and null

1. nil see if a pointer points whether points to object or not

## self
self ~= this in java

## id
id: a NSObject pointer

## instancetype

New version of id, compiler can interpret its type, can only be a return type.

## dealloc

```objective-c
- (void) dealloc
{
    // runs at the end, for clean-up
    dellocations
}
```

## init chaining

```objective-c
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
```

## description
In Java: `toString()`

In Objective C: `- (NSString *) description`

## Class Category
Writing category class is not inherit from the superclass rather than enhance it.

1. Add methods, not properties
2. Dont need to the source code
3. Add both .h and .m

## Class extension
Add private properties:
1. Add properties
2. Need the source code
3. Only add .h file, all behaviors go to .m file

readonly property vs Class extension:

.h file
``` objective-c
@property (readonly) NSString *str
```
.m file
``` objective-c
@property NSString *str
```

str can be access publicly for **readonly**, and **Read&Write** for private use.

## Protocols

Protocol is sort like `interface`

``` objective-c
@prototcol Cleaner

@required
- (void) cleanFloor;
- (void) emptyTrash;

@optional
- (void) cleanWindows;

@end
```
![screenshot 2014-08-21 19 13 25](https://cloud.githubusercontent.com/assets/5491695/4004940/00b6eee4-2989-11e4-9efa-16882a5f7bbc.png)



## Dynamic typing

Generics

``` objective-c
for (id obj in Objects){
    if([obj isKindOfClass: [NSString class]]){
        NSLog(@"Current obj: %@", [obj uppercaseString]);
    }

    if([obj respondsToSellector:@selector(uppercaseString)]){
        NSLog(@"Current obj: %@", [obj uppercaseString]);
    } else {
        NSLog(@"Doesn't have uppercaseString");
    }
}
```

## Errors and Debugging

Add breakpoints and debug tools

# Reference

[Objective C tutorials]
(http://www.lynda.com/Objective-C-tutorials/)

[Private properties, methods and ivars in Objective-C]
(http://goo.gl/4S8inl)
