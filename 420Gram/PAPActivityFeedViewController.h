//
//  PAPActivityFeedViewController.h
//  420Gram
//
//  Created by Mattieu Gamache-Asselin on 5/9/12.
//

#import "PAPActivityCell.h"
#import "AppDelegate.h"

@interface PAPActivityFeedViewController : PFQueryTableViewController <PAPActivityCellDelegate>

+ (NSString *)stringForActivityType:(NSString *)activityType;

@end
