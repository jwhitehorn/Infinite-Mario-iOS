//
//  GameEngine.m
//  Infinite Mario
//
//  Created by Jason Whitehorn on 3/31/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

#import "GameEngine.h"
#define UPDATE_INTERVAL 100

@implementation GameEngine

- (id) initWithScreen:(CALayer *)screenLayer andState:(GameState *)state{
    self = [super init];
    if(self){    
        _screen = screenLayer;
        _stateContext = [[GameStateContext alloc] initWithState:state];
    }
    
    [self performSelector:@selector(update) withObject:nil afterDelay:UPDATE_INTERVAL];
    
    return self;
}

- (void) update{
    CGFloat timeStamp = [[NSDate new] timeIntervalSince1970];
    CGFloat delta = timeStamp - _lastUpdate;
    _lastUpdate = timeStamp;
    
    [_stateContext update:delta];
    //begin draw
    [_stateContext draw:delta];
    //end draw
    [self performSelector:@selector(update) withObject:nil afterDelay:UPDATE_INTERVAL];
}

@end
