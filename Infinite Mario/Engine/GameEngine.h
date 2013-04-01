//
//  GameEngine.h
//  Infinite Mario
//
//  Created by Jason Whitehorn on 3/31/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameState.h"

@interface GameEngine : NSObject{
    CALayer *_screen;
    GameState *_state;
}

//must be initialized on the UI thread
- (id) initWithScreen:(CALayer *)screenLayer andState:(GameState *)state;

@end
