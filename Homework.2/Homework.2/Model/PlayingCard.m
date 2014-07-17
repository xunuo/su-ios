//
//  PlayingCard.m
//  Homework.2
//
//  Created by snow on 14-7-17.
//  Copyright (c) 2014年 snow. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard


    - (NSString *)contents
    {
        NSArray *rankStrings = [PlayingCard rankStrings];
        return [self.suit stringByAppendingString:rankStrings[self.rank]];
    }

    + (NSArray *)validSuits
    {
        return @[@"♠︎", @"♣︎", @"♥︎", @"♦︎"];
    }

    + (NSArray *)rankStrings
    {
        // return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
        return @[@"?", @"A", @"2", @"3"];
    }

    + (NSUInteger)maxRank
    {
        return [[self rankStrings] count] - 1;
    }

@end
