//
//  main.m
//  InitializerDemo
//
//  Created by Lin Dong on 8/20/14.
//  Copyright (c) 2014 Lin Dong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Player+Report.h"

int main(int argc, const char * argv[])
{
  
  @autoreleasepool {
    
    // insert code here...
    NSLog(@"Hello, World!");
    Player *player = [[Player alloc] init];
    NSLog(@"Player's score %i", player.score);
    
    Player *player2 = [[Player alloc] initWithInteger:1000];
    NSLog(@"Player's score %i", player2.score);
    
    int singleVal;
    singleVal = 10;
    int multiVal[5] = {1,2,3,4,5};
    multiVal[1] = 100;
    NSLog(@"The 2nd element of multiVal is %i", multiVal[1]);
    
    NSString *nsstringArray[3] = {@"first", @"second", @"thrid"};
    NSLog(@"The 2nd string is: %@", nsstringArray[1]);
    
    // NSArray
    NSDate *myDate = [[NSDate alloc]init];
    // immuatable
    NSArray *myArray = [[NSArray alloc] initWithObjects:@"one", @"two", myDate, nil];
    NSLog(@"The third element of myArray is: %@", [myArray objectAtIndex:1]);
    
    NSMutableArray *myMutArr = [[NSMutableArray alloc]init];
    NSString *str = @"sup";
    [myMutArr addObject:str];
    NSLog(@"The first element: %@", myMutArr[0] );
    NSLog(@"The first element: %lu", [myMutArr count]);
    [myMutArr removeObjectAtIndex:0];
    NSLog(@"The first element: %lu", [myMutArr count]);
    
    // shorthand, only for NSArray not NSMutableArray
    NSArray *newArray = @[@"a", @"b", @"c", myDate];
    NSLog(@"The first element: %lu", [newArray count]);
    
    // Dictionary
    NSDictionary *states = [[NSDictionary alloc]
                            initWithObjectsAndKeys:
                            @"Flordia", @"FL",
                            @"Georgia", @"GA",
                            nil];
    NSString *ga = @"GA";
    NSLog(@"%@ coorsponding to %@", ga, [states objectForKey:ga]);
    // shorthand
    NSLog(@"%@ coorsponding to %@", ga, states[ga]);
    
    NSMutableDictionary *muStates = [[NSMutableDictionary alloc]
                                     initWithObjectsAndKeys:
                                     @"Flordia", @"FL",
                                     @"Georgia", @"GA",
                                     nil];
    [muStates setObject:@"California" forKey:@"CA"];
    NSDictionary *quickDict = @{
                                @"FL": @"Flordia",
                                @"GA": @"Georgia",
                                };
    
    // regular loops
    // for (int i = 1; i < 10; ++i){}
    // fast enumeration
    for (NSString *str in newArray){
      NSLog(@"str is %@", str);
    }
    NSString *filePath = @"/System/Library/Sounds";
    NSFileManager *fileManager = [[NSFileManager alloc] init];
    NSArray *soundFiles = [fileManager subpathsAtPath:filePath];
    for (NSString *file in soundFiles ) {
      NSLog(@"path: %@", file);
    }
    
    // read and write
    NSString *path = @"/Users/ldong/lookup.py";
    fileManager = [[NSFileManager alloc] init];
    
    if ([fileManager fileExistsAtPath:path]){
      NSLog(@"Exist");
    } else {
      NSLog(@"Does NOT exist");
    }
    NSDictionary *attrDict = [fileManager attributesOfItemAtPath:path error:nil];
    
    for (NSString *key in attrDict) {
      NSLog(@"attribute %@: %@", key, attrDict[key]);
    }
    
    NSString *homeDir = NSHomeDirectory();
    NSLog(@"Home Dir: %@", homeDir);
    
    NSString *desktopPath = [homeDir stringByAppendingString:@"Desktop"];
    desktopPath = [homeDir stringByAppendingPathComponent:@"Desktop"];
    NSLog(@"Desktop path: %@", desktopPath);
    
    NSFileManager *fManger = [NSFileManager defaultManager];
    NSURL *url = [fManger URLForDirectory:NSDocumentDirectory
                          inDomain:NSUserDomainMask
                          appropriateForURL: nil
                          create:NO
                          error: nil];
    NSLog(@"Url is: %@", url);


    //  NSString to NSURL
    // http://google.com/robots.txt
    // ^scheme  ^domain  ^path
    NSString *regularStringPath = @"/User/ldong/lookup.py";
    NSURL *urlPath = [NSURL fileURLWithPath:regularStringPath];
    if ([fileManager fileExistsAtPath:[urlPath absoluteString]]) {
      NSLog(@"It exists");
    }
    
    NSURL *fileUrl = [[NSFileManager defaultManager]
                  URLForDirectory:NSDocumentDirectory
                  inDomain:NSUserDomainMask
                  appropriateForURL:nil
                  create:NO
                  error:nil];
    NSURL *fullFileUrl = [fileUrl URLByAppendingPathComponent:@"interview.txt"];
    NSLog(@"URL: %@", fullFileUrl);
    
    NSMutableString *content = [[NSMutableString alloc]
                         initWithContentsOfURL:fullFileUrl
                         encoding:NSUTF8StringEncoding
                         error:nil
                         ];
    
    [content appendString:@"???"];
//    NSLog(@"contents %@", content);
    NSURL *savedPath = [fileUrl URLByAppendingPathComponent:@"saved.txt"];
    NSLog(@"absolute string is: %@", [savedPath absoluteString]);
    NSString *savedPathString = [savedPath absoluteString];
    NSError * error = NULL;
    BOOL returnAction = [content writeToURL:savedPath
             atomically:YES
             encoding:NSUTF8StringEncoding
             error: &error];
    NSLog(@"Is successful? %d", returnAction);
    NSLog(@"Error: %@", error);
    
    
    Player *p = [[Player alloc]init];
    [p fight];
    
    return 0;
  }
}
