#import "RGLAlertView.h"

@implementation RGLAlertView

- (instancetype)initWithBodyMessage:(NSString *)stringText andDismissButtonText:(NSString *)dismissButtonText
{
    self.backgroundColor = [UIColor colorWithRed:0.73 green:0.27 blue:0.46 alpha:1];
    return [self initMethodWithColor:[UIColor colorWithRed:0.73 green:0.27 blue:0.46 alpha:1]];
}

- (instancetype)initWithBodyMessage:(NSString *)stringText andDismissButtonText:(NSString *)dismissButtonText andBackgroundColor:(UIColor *)backgroundColor
{
    self.backgroundColor = backgroundColor;
    return [self initMethodWithColor:backgroundColor];
}

#pragma mark - Customization

- (void)setTitle:(NSString *)title
{

}

- (void)setBody:(NSString *)body
{

}

- (void)addDismissButton:(NSString *)buttonTitle
{

}

- (void)addButtonWithTitle:(NSString *)buttonTitle
{

}

- (void)addTextFieldWithPlaceholder:(NSString *)textField
{

}

- (void)addImageInTop:(UIImage *)image
{

}

#pragma mark - Animation options

- (void)presentAlertViewWithAnimation:(NSUInteger)animationOption
{
    UIView *viewController = (UIView *)[UIApplication sharedApplication].keyWindow.subviews.firstObject;
    [viewController addSubview:self];

    if (animationOption == 0) {
        [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:10 initialSpringVelocity:20 options:0 animations:^{
            self.alertView.transform = CGAffineTransformTranslate(CGAffineTransformMakeRotation(0), 0, 0);
        } completion:^(BOOL finished) {
            
        }];
    }
}

#pragma mark - IBAction dismiss button

- (void)onDismissButtonPressed
{
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:10 initialSpringVelocity:20 options:0 animations:^{
        self.alertView.transform = CGAffineTransformTranslate(CGAffineTransformMakeRotation(0), 50, -500);
        self.backgroundView.alpha = 0;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

#pragma mark - Helper method

- (UIView *)initMethodWithColor:(UIColor *)backgroundColor
{
    self = [RGLAlertView new];

    self.arrayOfButtons = [NSMutableArray new];

    self.deviceWidth = [UIScreen mainScreen].bounds.size.width;
    self.deviceHeight = [UIScreen mainScreen].bounds.size.height;

    self.frame = CGRectMake(0, 0, self.deviceWidth, self.deviceHeight);

    self.backgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.deviceWidth, self.deviceHeight)];
    self.backgroundView.backgroundColor = [UIColor blackColor];
    self.backgroundView.alpha = 0.75;
    [self addSubview:self.backgroundView];

    self.alertView = [[UIView alloc] initWithFrame:CGRectMake(50, self.deviceHeight/3 + 30, self.deviceWidth - 100, 150)];
    self.alertView.backgroundColor = [UIColor colorWithRed:0.73 green:0.27 blue:0.46 alpha:1];
    self.alertView.layer.cornerRadius = 7;
    self.alertView.clipsToBounds = YES;
    [self addSubview:self.alertView];

    self.labelBody = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, self.alertView.frame.size.width - 30, self.alertView.frame.size.height - 50)];
    self.labelBody.text = @"This is the very first and most simple alert";
    self.labelBody.textAlignment = NSTextAlignmentCenter;
    self.labelBody.numberOfLines = 10;
    [self.labelBody sizeToFit];
    CGRect labelRect = self.labelBody.frame;
    self.alertView.frame = CGRectMake(50, (self.deviceHeight - (labelRect.size.height + 50 + 50))/2, self.deviceWidth - 100, labelRect.size.height + 50 + 50);
    self.labelBody.frame = CGRectMake(15, (self.alertView.frame.size.height -  labelRect.size.height - 50)/2, labelRect.size.width, labelRect.size.height);
    [self.alertView addSubview:self.labelBody];

    self.buttonDismiss = [[UIButton alloc] initWithFrame:CGRectMake(0, self.alertView.frame.size.height - 50, self.alertView.frame.size.width, 50)];
    self.buttonDismiss.backgroundColor = [UIColor blackColor];
    [self.buttonDismiss setTitle:@"Dismiss" forState:UIControlStateNormal];
    self.buttonDismiss.alpha = 0.3;
    [self.buttonDismiss addTarget:nil action:@selector(onDismissButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.alertView addSubview:self.buttonDismiss];

    self.alertView.transform = CGAffineTransformTranslate(CGAffineTransformMakeRotation(0), 50, -500);
    
    return self;
}

@end
