//
//  CardGameViewController.m
//  Homework.1
//
//  Created by snow on 14-7-17.
//  Copyright (c) 2014年 snow. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()

    @property (weak, nonatomic) IBOutlet UILabel *flipsLabel;

    @property (nonatomic) int flipCount;

    @property (strong, nonatomic) PlayingCardDeck *playingCardDeck;

@end

@implementation CardGameViewController

    - (PlayingCardDeck *)playingCardDeck{
        if(!_playingCardDeck) _playingCardDeck = [self createPlayingCardDeck];
        return _playingCardDeck;
    }

    - (PlayingCardDeck *)createPlayingCardDeck{
        return [[PlayingCardDeck alloc] init];
    }

    - (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
    {
        if (event.type == UIEventSubtypeMotionShake)
        {
            NSLog(@"Shake Began");
        }
    }

    -(void)setFlipCount:(int)flipCount{
        
        _flipCount = flipCount;
        
        self.flipsLabel.text = [NSString stringWithFormat:@"Flips : %d", self.flipCount];
        
        NSLog( @"flipCount changed to %d", self.flipCount );
        
    }

    - (IBAction)touchCardButton:(UIButton *)sender {
        
        if([sender.currentTitle length]){
            [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
            [sender setTitle:@"" forState:UIControlStateNormal];
        } else {
            Card *randomCard = [self.playingCardDeck drawRandomCard];
            // 保护机制，判断不为nil
            if(randomCard){
                [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
                [sender setTitle:randomCard.contents forState:UIControlStateNormal];
            }
        }
        
         NSLog( @"Remaining cards number: %lu", (unsigned long)[self.playingCardDeck.cards count] );
        
            if( [self.playingCardDeck.cards count] == 0 ){
                self.flipCount = 0;
                _playingCardDeck = [self createPlayingCardDeck];
            }
        
        self.flipCount++;
    }

@end
