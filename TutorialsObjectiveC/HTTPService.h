//
//  HTTPService.h
//  TutorialsObjectiveC
//
//  Created by Jeff Ripke on 8/8/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^onComplete)(NSDictionary * __nullable dataDict, NSString * __nullable errMessage);

@interface HTTPService : NSObject

+ (id) instance;
- (void) getTutorials:(nullable onComplete)completionHandler;


@end
