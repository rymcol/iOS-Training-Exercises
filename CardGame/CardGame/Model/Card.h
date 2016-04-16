//
//  Card.h
//  CardGame
//
//  Created by Ryan Collins on 2014-01-09.
//  Copyright (c) 2014 Ryan Collins. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

-(int)match:(NSArray *)otherCards;

@end
