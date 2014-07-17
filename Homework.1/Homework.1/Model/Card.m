//
//  Card.m
//  Homework.1
//
//  Created by snow on 14-7-17.
//  Copyright (c) 2014年 snow. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
