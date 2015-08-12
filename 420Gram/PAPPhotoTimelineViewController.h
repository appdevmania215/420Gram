//
//  PAPPhotoTimelineViewController.h
//  420Gram
//
//  Created by Héctor Ramos on 5/3/12.
//

#import "PAPPhotoHeaderView.h"
#import "AppDelegate.h"

@interface PAPPhotoTimelineViewController : PFQueryTableViewController <PAPPhotoHeaderViewDelegate>

- (PAPPhotoHeaderView *)dequeueReusableSectionHeaderView;

@end
