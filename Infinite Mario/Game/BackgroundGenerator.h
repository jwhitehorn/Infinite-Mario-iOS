//
//  BackgroundGenerator.h
//  Infinite Mario
//
//  Created by Jason Whitehorn on 4/2/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LevelType.h"

@interface BackgroundGenerator : NSObject

@property CGFloat width;
@property CGFloat height;
@property CGFloat distance;
@property LevelType type;

- (id) initWithWidth:(CGFloat)width andHeight:(CGFloat)height andDistance:(CGFloat)distance withType:(LevelType)type;

@end
