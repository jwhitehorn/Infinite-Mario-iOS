//
//  GameStateContext.m
//  Infinite Mario
//
//  Created by Jason Whitehorn on 4/2/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

#import "GameStateContext.h"

@implementation GameStateContext

@synthesize state;

- (id)initWithState:(GameState *)newState {
    self = [super init];
    if(self){
        self.state = state;
        [state enter];
    }
    return self;
}
- (void) changeToState:(GameState *)newState {
    if (state) {
        [state exit];
    }
    [self setState:newState];
    [state enter];
}
- (void) update:(CGFloat)delta {
    [state checkForChange:self];
    [state update:delta];
}
- (void) draw:(CGFloat)delta {
    [state draw:delta];
}
@end
