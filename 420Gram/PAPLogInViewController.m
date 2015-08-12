//
//  PAPLogInViewController.m
//  420Gram
//
//  Created by Mattieu Gamache-Asselin on 5/17/12.
//

#import "PAPLogInViewController.h"

@implementation PAPLogInViewController

#pragma mark - UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // There is no documentation on how to handle assets with the taller iPhone 5 screen as of 9/13/2012
    if ([UIScreen mainScreen].bounds.size.height > 480.0f) {
        // for the iPhone 5
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"BackgroundLogin-568h.png"]];
    } else {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"BackgroundLogin.png"]];
    }
    
//    NSString *text = @"Sign up and start sharing your story with your friends.";
//    CGSize textSize = [text boundingRectWithSize: CGSizeMake(255.0f, CGFLOAT_MAX) options: NSStringDrawingUsesLineFragmentOrigin attributes: @{ NSFontAttributeName: [UIFont fontWithName:@"HelveticaNeue-Medium" size:18.0f] } context: nil].size;
//
//    UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake( ([UIScreen mainScreen].bounds.size.width - textSize.width)/2.0f, 160.0f, textSize.width, textSize.height)];
//    [textLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Medium" size:18.0f]];
//    [textLabel setLineBreakMode:NSLineBreakByWordWrapping];
//    [textLabel setNumberOfLines:0];
//    [textLabel setText:text];
//    [textLabel setTextColor:[UIColor whiteColor]];
//    [textLabel setBackgroundColor:[UIColor clearColor]];
//    [textLabel setTextAlignment:NSTextAlignmentCenter];

    [self.logInView setLogo:nil];
//    [self.logInView addSubview:textLabel];
    
    self.fields = PFLogInFieldsUsernameAndPassword;
    self.logInView.usernameField.placeholder = @"Enter your email";
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return toInterfaceOrientation == UIInterfaceOrientationPortrait;
}

- (void)viewDidLayoutSubviews {
    CGRect frame = self.logInView.facebookButton.frame;
    frame.origin.y = 400;
    self.logInView.facebookButton.frame = frame;
}

@end
