//
//  GameState.h
//  Infinite Mario
//
//  Created by Jason Whitehorn on 3/31/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GameStateContext;

@interface GameState : NSObject
- (void) enter;
- (void) exit;
- (void) update:(CGFloat)delta;
- (void) draw:(CGFloat)delta;
- (void) checkForChange:(GameStateContext *)context;
@end
