//
//  DrawableManager.m
//  Infinite Mario
//
//  Created by Jason Whitehorn on 4/2/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

#import "DrawableManager.h"

@implementation DrawableManager

- (id) init{
    self = [super init];
    if(self){
        unsorted = true;
        objects = [NSMutableArray new];
    }
    return self;
}

- (void) add:(Drawable *)drawable{
    [objects addObject:drawable];
    unsorted = true;
}

- (void) addArray:(NSArray *)drawables{
    [objects addObjectsFromArray:drawables];
    unsorted = true;
}

- (void) clear{
    [objects removeAllObjects];
}

- (bool) contains:(Drawable *)drawable{
    return [objects containsObject:drawable];
}

- (void) remove:(Drawable *)drawable{
    [objects removeObject:drawable];
}

- (void) removeAt:(int)index{
    [objects removeObjectAtIndex:index];
}

- (void) removeAt:(int)index withRange:(int)range{
    int i = index + range;
    while(i-- >= index){
        [objects removeObjectAtIndex:i];
    }
}

- (void) removeArray:(NSArray *)drawables{
    [objects removeObjectsInArray:drawables];
}

- (void) update:(CGFloat)delta{
    for(int i = 0; i != [objects count]; i++){
        [((Drawable *)[objects objectAtIndex:i]) update:delta];
    }
}

- (void) drawWithContext:(GameStateContext *)context andCamera:(CGPoint)camera{
    if(unsorted){
        NSArray *sorted = [objects sortedArrayUsingComparator:^NSComparisonResult(id a, id b) {
            Drawable *drawableA = (Drawable *)a;
            Drawable *drawableB = (Drawable *)b;
            
            if (drawableA.zIndex > drawableB.zIndex) {
                return (NSComparisonResult)NSOrderedAscending;
            } else if (drawableA.zIndex < drawableB.zIndex) {
                return (NSComparisonResult)NSOrderedDescending;
            }
            return (NSComparisonResult)NSOrderedSame;
        }];
        [objects removeAllObjects];
        unsorted = false;
        [objects addObjectsFromArray:sorted];
    }
    
    for(int i = 0; i != [objects count]; i++){
       [((Drawable *)[objects objectAtIndex:i]) drawWithContext:context andCamera:camera];
    }
}

@end
