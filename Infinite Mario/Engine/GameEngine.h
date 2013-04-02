//
//  GameEngine.h
//  Infinite Mario
//
//  Created by Jason Whitehorn on 3/31/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameStateContext.h"

@interface GameEngine : NSObject{
    CALayer *_screen;
    GameStateContext *_stateContext;
    CGFloat _lastUpdate;
}

//must be initialized on the UI thread
- (id) initWithScreen:(CALayer *)screenLayer andState:(GameState *)state;

@end
