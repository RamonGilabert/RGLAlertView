#import "RGLAlertView.h"

@interface RGLAlertView()

@property CGFloat deviceWidth;
@property CGFloat deviceHeight;
@property (strong, nonatomic) UIView *backgroundView;
@property (strong, nonatomic) UIView *alertView;
@property (strong, nonatomic) UILabel *labelTitle;
@property (strong, nonatomic) UILabel *labelBody;
@property (strong, nonatomic) UIButton *buttonDismiss;
@property (strong, nonatomic) UIButton *buttonSecond;
@property (strong, nonatomic) UIButton *buttonThird;
@property (strong, nonatomic) NSMutableArray *arrayOfButtons;
@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) UIColor *backgroundColor;
@property int animationOption;

@end

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
    CGRect currentRectOfAlert = self.alertView.frame;
    CGRect currentRectBody = self.labelBody.frame;
    CGRect currentRectButton = self.buttonDismiss.frame;

    [self.labelTitle removeFromSuperview];

    self.alertView.transform = CGAffineTransformIdentity;
    self.labelTitle = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, currentRectOfAlert.size.width - 30, 30)];
    self.labelTitle.numberOfLines = 2;
    self.labelTitle.text = title;
    self.labelTitle.textAlignment = NSTextAlignmentCenter;
    self.labelTitle.font = [UIFont fontWithName:@"AvenirNext-Regular" size:22];
    [self.labelTitle sizeToFit];
    CGRect rectOfLabel = self.labelTitle.frame;
    self.labelTitle.frame = CGRectMake(15, 15, (currentRectOfAlert.size.width + rectOfLabel.size.width)/2 + 30, rectOfLabel.size.height);
    self.alertView.frame = CGRectMake(50, (self.deviceHeight - (currentRectOfAlert.size.height + rectOfLabel.size.height + 60))/2, self.deviceWidth - 100, currentRectOfAlert.size.height + rectOfLabel.size.height);
    self.labelBody.frame = CGRectMake(currentRectBody.origin.x, self.labelTitle.frame.origin.y + self.labelTitle.frame.size.height + 12, currentRectBody.size.width, currentRectBody.size.height);
    self.buttonDismiss.frame = CGRectMake(currentRectButton.origin.x, self.alertView.frame.size.height - currentRectButton.size.height, currentRectButton.size.width, currentRectButton.size.height);

    [self.alertView addSubview:self.labelTitle];
}

- (void)setBody:(NSString *)body
{
    CGRect currentRectOfAlert = self.alertView.frame;
    CGRect currentRectTitle = self.labelTitle.frame;
    CGRect currentRectButton = self.buttonDismiss.frame;
    CGRect currentRectBody = self.labelBody.frame;

    [self.labelBody removeFromSuperview];

    self.alertView.transform = CGAffineTransformIdentity;
    self.labelBody.text = body;
    [self.labelBody sizeToFit];
    CGRect rectOfLabel = self.labelBody.frame;
    self.labelBody.frame = CGRectMake(15, currentRectTitle.origin.y + currentRectTitle.size.height + 12, currentRectOfAlert.size.width - 30, rectOfLabel.size.height);
    self.alertView.frame = CGRectMake(50, (self.deviceHeight - (currentRectOfAlert.size.height - currentRectBody.size.height + rectOfLabel.size.height + 30))/2, self.deviceWidth - 100, currentRectOfAlert.size.height - currentRectBody.size.height + rectOfLabel.size.height);
    self.buttonDismiss.frame = CGRectMake(0, self.alertView.frame.size.height - currentRectButton.size.height, self.alertView.frame.size.width, currentRectButton.size.height);

    [self.alertView addSubview:self.labelBody];
}

- (void)addButtonWithTitle:(NSString *)buttonTitle
{
    CGRect currentDismissButton = self.buttonDismiss.frame;
    CGRect currentAlertView = self.alertView.frame;

    if (!self.buttonSecond) {
        self.buttonSecond = [[UIButton alloc] initWithFrame:CGRectMake(0, currentAlertView.size.height - currentDismissButton.size.height, currentAlertView.size.width/2 - 0.5, currentDismissButton.size.height)];
        self.buttonSecond.backgroundColor = [UIColor blackColor];
        self.buttonSecond.alpha = 0.3;
        [self.alertView addSubview:self.buttonSecond];
        [self.buttonSecond setTitle:buttonTitle forState:UIControlStateNormal];
        self.buttonDismiss.frame = CGRectMake(currentAlertView.size.width/2 + 0.5, currentAlertView.size.height - currentDismissButton.size.height, currentAlertView.size.width/2 - 0.5, currentDismissButton.size.height);
        [self.buttonSecond addTarget:self action:@selector(onSecondButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    } else if (self.buttonSecond && !self.buttonThird) {
        currentDismissButton = CGRectMake(0, currentAlertView.size.height - currentDismissButton.size.height, currentAlertView.size.width, currentDismissButton.size.height - 0.5);
        self.buttonSecond.frame = currentDismissButton;
        self.buttonThird = [[UIButton alloc] initWithFrame:CGRectMake(currentDismissButton.origin.x, currentDismissButton.origin.y + currentDismissButton.size.height + 0.5, currentDismissButton.size.width, currentDismissButton.size.height - 0.5)];
        self.buttonDismiss.frame = CGRectMake(currentDismissButton.origin.x, currentDismissButton.origin.y + currentDismissButton.size.height*2 + 0.5, currentDismissButton.size.width, currentDismissButton.size.height - 0.5);
        self.buttonThird.backgroundColor = [UIColor blackColor];
        self.buttonThird.alpha = 0.3;
        [self.alertView addSubview:self.buttonThird];
        [self.buttonThird setTitle:buttonTitle forState:UIControlStateNormal];
        self.alertView.frame = CGRectMake(50, (self.deviceHeight - (currentAlertView.size.height + currentDismissButton.size.height*2))/2, currentAlertView.size.width, currentAlertView.size.height + currentDismissButton.size.height*2);
        [self.buttonThird addTarget:self action:@selector(onThirdButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)addImageInTop:(UIImage *)image
{
    if ([image isKindOfClass:[UIImage class]]) {
        self.alertView.transform = CGAffineTransformIdentity;

        self.imageView = [[UIImageView alloc] initWithImage:image];
        self.imageView.frame = CGRectMake((self.deviceWidth - 70)/2, self.alertView.frame.origin.y - 40, 70, 70);
        self.imageView.layer.cornerRadius = self.imageView.frame.size.width/2;
        self.imageView.layer.borderWidth = 6;
        self.imageView.layer.borderColor = self.alertView.backgroundColor.CGColor;
        self.imageView.layer.masksToBounds = YES;

        self.labelTitle.frame = CGRectMake(self.labelTitle.frame.origin.x, self.labelTitle.frame.origin.y + 25, self.labelTitle.frame.size.width, self.labelTitle.frame.size.height);
        self.labelBody.frame = CGRectMake(self.labelBody.frame.origin.x, self.labelBody.frame.origin.y + 20, self.labelBody.frame.size.width, self.labelBody.frame.size.height);
        self.buttonDismiss.frame = CGRectMake(self.buttonDismiss.frame.origin.x, self.buttonDismiss.frame.origin.y + 15, self.buttonDismiss.frame.size.width, self.buttonDismiss.frame.size.height);
        self.buttonSecond.frame = CGRectMake(self.buttonSecond.frame.origin.x, self.buttonSecond.frame.origin.y + 15, self.buttonSecond.frame.size.width, self.buttonSecond.frame.size.height);
        self.buttonThird.frame = CGRectMake(self.buttonThird.frame.origin.x, self.buttonThird.frame.origin.y + 15, self.buttonThird.frame.size.width, self.buttonThird.frame.size.height);
        self.alertView.frame = CGRectMake(self.alertView.frame.origin.x, self.alertView.frame.origin.y - 7.5, self.alertView.frame.size.width, self.alertView.frame.size.height + 15);

        [self addSubview:self.imageView];
    }
}

#pragma mark - IBActions second and third button

- (void)onSecondButtonPressed:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(buttonDidPressedWithTitle:)]) {
        [self.delegate buttonDidPressedWithTitle:sender.titleLabel.text];
    }
}

- (void)onThirdButtonPressed:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(buttonDidPressedWithTitle:)]) {
        [self.delegate buttonDidPressedWithTitle:sender.titleLabel.text];
    }
}

#pragma mark - Animation options

- (void)presentAlertViewWithAnimation:(int)animationOption
{
    if (animationOption == 0) {
        self.imageView.transform = CGAffineTransformMakeTranslation(50, -500);
        self.alertView.transform = CGAffineTransformMakeTranslation(50, -500);
    } else if (animationOption == 1) {
        self.imageView.transform = CGAffineTransformMakeScale(0, 0);
        self.alertView.transform = CGAffineTransformMakeScale(0, 0);
    } else if (animationOption == 2) {

    } else if (animationOption == 3) {
        
    }

    UIView *viewController = (UIView *)[UIApplication sharedApplication].keyWindow.subviews.firstObject;
    [viewController addSubview:self];

    if (animationOption == 0) {
        [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:10 initialSpringVelocity:20 options:0 animations:^{
            self.imageView.transform = CGAffineTransformMakeTranslation(0, 0);
            self.alertView.transform = CGAffineTransformMakeTranslation(0, 0);
        } completion:^(BOOL finished) {
            
        }];
    } else if (animationOption == 1) {
        [UIView animateWithDuration:0.2 animations:^{
            self.imageView.transform = CGAffineTransformMakeScale(1.1, 1.1);
            self.alertView.transform = CGAffineTransformMakeScale(1.1, 1.1);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.2 animations:^{
                self.imageView.transform = CGAffineTransformMakeScale(1, 1);
                self.alertView.transform = CGAffineTransformMakeScale(1, 1);
            } completion:^(BOOL finished) {
                
            }];
        }];
    }

    self.animationOption = animationOption;
}

#pragma mark - IBAction dismiss button

- (void)onDismissButtonPressed
{
    if ([self.delegate respondsToSelector:@selector(buttonDismissDidPressed)]) {
        [self.delegate buttonDismissDidPressed];
    }
    
    if (self.animationOption == 0) {
        [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:10 initialSpringVelocity:20 options:0 animations:^{
            self.imageView.transform = CGAffineTransformMakeTranslation(50, -500);
            self.alertView.transform = CGAffineTransformMakeTranslation(50, -500);
            self.backgroundView.alpha = 0;
        } completion:^(BOOL finished) {
            [self removeFromSuperview];
        }];
    } else if (self.animationOption == 1) {
        [UIView animateWithDuration:0.2 animations:^{
            self.imageView.transform = CGAffineTransformMakeScale(1.1, 1.1);
            self.alertView.transform = CGAffineTransformMakeScale(1.1, 1.1);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.4 animations:^{
                self.imageView.transform = CGAffineTransformMakeScale(0, 0);
                self.alertView.transform = CGAffineTransformMakeScale(0, 0);
                self.backgroundView.alpha = 0;
            } completion:^(BOOL finished) {
                [self removeFromSuperview];
            }];
        }];
    }
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
    self.labelBody.frame = CGRectMake(15, (self.alertView.frame.size.height -  labelRect.size.height - 50)/2, self.alertView.frame.size.width - 30, labelRect.size.height);
    [self.alertView addSubview:self.labelBody];

    self.buttonDismiss = [[UIButton alloc] initWithFrame:CGRectMake(0, self.alertView.frame.size.height - 50, self.alertView.frame.size.width, 50)];
    self.buttonDismiss.backgroundColor = [UIColor blackColor];
    [self.buttonDismiss setTitle:@"Dismiss" forState:UIControlStateNormal];
    self.buttonDismiss.alpha = 0.3;
    [self.buttonDismiss addTarget:nil action:@selector(onDismissButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.alertView addSubview:self.buttonDismiss];
    
    return self;
}

@end
