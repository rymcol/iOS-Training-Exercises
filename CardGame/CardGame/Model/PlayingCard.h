//
//  PlayingCard.h
//  CardGame
//
//  Created by Ryan Collins on 2014-01-09.
//  Copyright (c) 2014 Ryan Collins. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;
+ (NSArray *)rankStrings;
@end
