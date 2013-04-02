//
//  GameStateContext.h
//  Infinite Mario
//
//  Created by Jason Whitehorn on 4/2/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameState.h"

@interface GameStateContext : NSObject
@property GameState *state;
- (id)initWithState:(GameState *)state;
- (void) changeToState:(GameState *)state;
- (void) update:(CGFloat)delta;
- (void) draw:(CGFloat)delta;
@end
