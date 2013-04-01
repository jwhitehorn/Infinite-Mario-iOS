//
//  ViewController.m
//  Infinite Mario
//
//  Created by Jason Whitehorn on 3/31/13.
//  Copyright (c) 2013 Jason Whitehorn. All rights reserved.
//

#import "ViewController.h"
#import "TitleScreen.h"


@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.gameEngine = [[GameEngine alloc] initWithScreen:self.view.layer andState:[TitleScreen new]];
}

@end
