//
//  BackgroundGenerator.m
//  Infinite Mario
//
//  Created by Jason Whitehorn on 4/2/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

#import "BackgroundGenerator.h"

@implementation BackgroundGenerator

@synthesize height, width, distance, type;

- (id) initWithWidth:(CGFloat)aWidth andHeight:(CGFloat)aHeight andDistance:(CGFloat)aDistance withType:(LevelType)aType{
    self = [super init];
    if(self){
        self.width = aWidth;
        self.height = aHeight;
        self.distance = aDistance;
        self.type = aType;
    }    
    return self;
}

@end
