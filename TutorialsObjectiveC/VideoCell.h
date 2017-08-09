//
//  VideoCell.h
//  TutorialsObjectiveC
//
//  Created by Jeff Ripke on 8/8/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Video;

@interface VideoCell : UITableViewCell

- (void)updateUI: (nonnull Video*)video;

@end
