//
//  PlayingCardDeck.m
//  Homework.1
//
//  Created by snow on 14-7-17.
//  Copyright (c) 2014年 snow. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        for (NSString *validSuit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank <= [PlayingCard maxRank]; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = validSuit;
                [self addCard:card];
            }
        }
    }
    return self;
}

@end
