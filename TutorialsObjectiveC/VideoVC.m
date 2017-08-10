//
//  VideoVC.m
//  TutorialsObjectiveC
//
//  Created by Jeff Ripke on 8/10/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

#import "VideoVC.h"
#import "Video.h"

@interface VideoVC ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end

@implementation VideoVC

-(void)viewDidLoad {
    [super viewDidLoad];
    self.titleLabel.text = self.video.videoTitle;
    self.descriptionLabel.text = self.video.videoDescription;
    [self.webView loadHTMLString:self.video.videoIframe baseURL:nil];
}
- (IBAction)donePressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
