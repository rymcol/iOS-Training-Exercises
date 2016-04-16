//
//  Deck.h
//  CardGame
//
//  Created by Ryan Collins on 2014-01-09.
//  Copyright (c) 2014 Ryan Collins. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;


@end
