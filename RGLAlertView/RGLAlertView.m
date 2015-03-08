#import "RGLAlertView.h"

@implementation RGLAlertView

- (instancetype)initWithBodyMessage:(NSString *)stringText andDismissButtonText:(NSString *)dismissButtonText
{
    self.deviceWidth = [UIScreen mainScreen].bounds.size.width;
    self.deviceHeight = [UIScreen mainScreen].bounds.size.height;

    UIView *viewBackgroundAlert = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.deviceWidth, self.deviceHeight)];
    viewBackgroundAlert.backgroundColor = [UIColor blackColor];
    viewBackgroundAlert.alpha = 0.75;
    [self.view addSubview:viewBackgroundAlert];

    UIView *alertView = [[UIView alloc] initWithFrame:CGRectMake(50, self.deviceHeight/3 + 30, self.deviceWidth - 100, 150)];
    alertView.backgroundColor = [UIColor colorWithRed:0.73 green:0.27 blue:0.46 alpha:1];
    alertView.layer.cornerRadius = 7;
    alertView.clipsToBounds = YES;
    [self.view addSubview:alertView];

    UILabel *labelBodyAlert = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, alertView.frame.size.width - 30, alertView.frame.size.height - 50)];
    labelBodyAlert.text = @"This is the very first and most simple alert";
    labelBodyAlert.textAlignment = NSTextAlignmentCenter;
    labelBodyAlert.numberOfLines = 10;
    [labelBodyAlert sizeToFit];
    CGRect labelRect = labelBodyAlert.frame;
    alertView.frame = CGRectMake(50, (self.deviceHeight - (labelRect.size.height + 50 + 50))/2, self.deviceWidth - 100, labelRect.size.height + 50 + 50);
    labelBodyAlert.frame = CGRectMake(15, (alertView.frame.size.height -  labelRect.size.height - 50)/2, labelRect.size.width, labelRect.size.height);
    [alertView addSubview:labelBodyAlert];

    UIButton *buttonDismissAlert = [[UIButton alloc] initWithFrame:CGRectMake(0, alertView.frame.size.height - 50, alertView.frame.size.width, 50)];
    buttonDismissAlert.backgroundColor = [UIColor blackColor];
    [buttonDismissAlert setTitle:@"Dismiss" forState:UIControlStateNormal];
    buttonDismissAlert.alpha = 0.3;
    [alertView addSubview:buttonDismissAlert];

    //alertView.transform = CGAffineTransformTranslate(CGAffineTransformMakeRotation(0), 50, -500);

    return self;
}

#pragma mark - Animation options

- (void)presentAlertViewWithAnimation:(NSUInteger)animationOption
{
    UIView *viewController = (UIView *)[UIApplication sharedApplication].keyWindow.subviews.firstObject;
    [viewController addSubview:self.view];
//    if (animationOption == 0) {
//        [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:10 initialSpringVelocity:20 options:0 animations:^{
//            self.view.transform = CGAffineTransformTranslate(CGAffineTransformMakeRotation(0), 0, 0);
//        } completion:^(BOOL finished) {
//            
//        }];
//    }
}


@end
