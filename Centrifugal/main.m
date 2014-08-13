//
//  main.m
//  Centrifugal
//
//  Created by Mike Ash on 8/13/14.
//  Copyright (c) 2014 Mike Ash. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ARCTest.h"
#import "MRCTest.h"


void Time(NSString *name, int iterations, dispatch_block_t block) {
    NSProcessInfo *pi = [NSProcessInfo processInfo];
    
    NSTimeInterval start = [pi systemUptime];
    for(int i = 0; i < iterations; i++) {
        @autoreleasepool {
            block();
        }
    }
    NSTimeInterval end = [pi systemUptime];
    
    NSTimeInterval delta = end - start;
    NSLog(@"%@: %d iterations in %f seconds for %fs/iteration", name, iterations, delta, delta / iterations);
}

#define TIME(code) Time(@#code, 10, ^{ code; })

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        TIME([ARCTest test]);
        TIME([MRCTest test]);
    }
    return 0;
}

