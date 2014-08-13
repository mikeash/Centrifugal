//
//  MRCTest.m
//  Centrifugal
//
//  Created by Mike Ash on 8/13/14.
//  Copyright (c) 2014 Mike Ash. All rights reserved.
//

#import "MRCTest.h"

@implementation MRCTest

+ (void)test {
    for(int i = 0; i < 1000000; i++) {
        [NSMutableArray array];
    }
    [self release];
}

@end
