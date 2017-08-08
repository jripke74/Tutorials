//
//  ViewController.m
//  TutorialsObjectiveC
//
//  Created by Jeff Ripke on 8/8/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "ViewController.h"
#import "HTTPService.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    [[HTTPService instance] test];
}


@end
