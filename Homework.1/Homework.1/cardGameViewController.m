//
//  cardGameViewController.m
//  Homework.1
//
//  Created by snow on 14-7-17.
//  Copyright (c) 2014年 snow. All rights reserved.
//

#import "cardGameViewController.h"

@interface cardGameViewController ()

@end

@implementation cardGameViewController

- (IBAction)touchCardButton:(UIButton *)sender {
    [
     sender setBackgroundImage : [UIImage imageNamed:@"cardback"]
                      forState : UIControlStateNormal
    ];
    
    [sender setTitle:@"" forState:UIControlStateNormal];
}

@end
