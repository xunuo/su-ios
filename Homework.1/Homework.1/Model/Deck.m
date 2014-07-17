//
//  Deck.m
//  Homework.1
//
//  Created by snow on 14-7-17.
//  Copyright (c) 2014年 snow. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@end

@implementation Deck

- (NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(PlayingCard *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(PlayingCard *)card
{
    [self.cards addObject:card];
}

- (PlayingCard *)drawRandomCard
{
    PlayingCard *randomCard = nil;
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}

@end