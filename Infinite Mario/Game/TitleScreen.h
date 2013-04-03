//
//  TitleScreen.h
//  Infinite Mario
//
//  Created by Jason Whitehorn on 3/31/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

#import "GameState.h"
#import "DrawableManager.h"

@interface TitleScreen : GameState

@property DrawableManager *drawManager;
@property CGFloat camera;

@end
