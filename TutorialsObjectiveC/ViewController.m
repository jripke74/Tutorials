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
    [[HTTPService instance] getTutorials:^(NSDictionary * _Nullable dataDict, NSString * _Nullable errMessage) {
        if (dataDict) {
            NSLog(@"Dictionary: %@", dataDict.debugDescription);
        } else if (errMessage) {
            // Display alert to user
        }
    }];
}

@end
