//
//  Deck.h
//  Homework.2
//
//  Created by snow on 14-7-17.
//  Copyright (c) 2014年 snow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayingCard.h"

@interface Deck : NSObject

@property (strong, nonatomic) NSMutableArray *cards;

- (void)addCard:(PlayingCard *)card atTop:(BOOL)atTop;
- (void)addCard:(PlayingCard *)card;

- (PlayingCard *)drawRandomCard;




@end
