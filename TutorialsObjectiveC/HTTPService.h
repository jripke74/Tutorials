//
//  HTTPService.h
//  TutorialsObjectiveC
//
//  Created by Jeff Ripke on 8/8/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTTPService : NSObject

+ (id) instance;
- (void) getTutorials;

@end
