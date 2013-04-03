//
//  Drawable.h
//  Infinite Mario
//
//  Created by Jason Whitehorn on 4/2/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameStateContext.h"

@interface Drawable : NSObject

- (void) drawWithContext:(GameStateContext *)context andCamera:(CGPoint)camera;

@end
