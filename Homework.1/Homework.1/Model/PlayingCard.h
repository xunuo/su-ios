//
//  PlayingCard.h
//  Homework.1
//
//  Created by snow on 14-7-17.
//  Copyright (c) 2014年 snow. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card


@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;


+ (NSArray *)validSuits;
+ (NSArray *)rankStrings;

+ (NSUInteger)maxRank;


@end
