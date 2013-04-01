//
//  GameEngine.m
//  Infinite Mario
//
//  Created by Jason Whitehorn on 3/31/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

#import "GameEngine.h"

@implementation GameEngine

- (id) initWithScreen:(CALayer *)screenLayer andState:(GameState *)state{
    self = [super init];
    if(self){    
        _screen = screenLayer;
        _state = state;
    }
    
    return self;
}

@end
