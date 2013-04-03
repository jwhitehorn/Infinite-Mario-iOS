//
//  DrawableManager.h
//  Infinite Mario
//
//  Created by Jason Whitehorn on 4/2/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Drawable.h"

@interface DrawableManager : NSObject{
    bool unsorted;
    NSMutableArray *objects;
}

- (void) add:(Drawable *)drawable;
- (void) addArray:(NSArray *)drawables;
- (void) clear;
- (bool) contains:(Drawable *)drawable;
- (void) remove:(Drawable *)drawable;
- (void) removeAt:(int)index;
- (void) removeAt:(int)index withRange:(int)range;
- (void) removeArray:(NSArray *)drawables;
- (void) update:(CGFloat)delta;
- (void) drawWithContext:(GameStateContext *)context andCamera:(CGPoint)camera;

@end
