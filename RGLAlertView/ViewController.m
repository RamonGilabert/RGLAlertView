#import "ViewController.h"

@interface ViewController ()

@property CGFloat deviceWidth;
@property CGFloat deviceHeight;
@property UIButton *buttonSimpleAlert;
@property UIButton *buttonSecondAlert;
@property UIButton *buttonThirdAlert;
@property UIButton *buttonFourthAlert;
@property UIButton *buttonFifthAlert;
@property UIButton *buttonSixthAlert;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.deviceWidth = [UIScreen mainScreen].bounds.size.width;
    self.deviceHeight = [UIScreen mainScreen].bounds.size.height;

    self.buttonSimpleAlert = [[UIButton alloc] initWithFrame:CGRectMake(0, 80, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonSimpleAlert.backgroundColor = [UIColor blackColor];
    [self.buttonSimpleAlert addTarget:self action:@selector(onFirstButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonSimpleAlert];

    self.buttonSecondAlert = [[UIButton alloc] initWithFrame:CGRectMake(self.deviceWidth/2 + 2.5, 80, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonSecondAlert.backgroundColor = [UIColor blueColor];
    [self.buttonSimpleAlert addTarget:self action:@selector(onSecondButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonSecondAlert];

    self.buttonThirdAlert = [[UIButton alloc] initWithFrame:CGRectMake(0, 85 + (self.deviceHeight - 90)/3, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonThirdAlert.backgroundColor = [UIColor redColor];
    [self.buttonSimpleAlert addTarget:self action:@selector(onThirdButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonThirdAlert];

    self.buttonFourthAlert = [[UIButton alloc] initWithFrame:CGRectMake(self.deviceWidth/2 + 2.5, 85 + (self.deviceHeight - 90)/3, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonFourthAlert.backgroundColor = [UIColor yellowColor];
    [self.buttonSimpleAlert addTarget:self action:@selector(onFourthButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonFourthAlert];

    self.buttonFifthAlert = [[UIButton alloc] initWithFrame:CGRectMake(0, 90 + (self.deviceHeight - 90)*2/3, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonFifthAlert.backgroundColor = [UIColor grayColor];
    [self.buttonSimpleAlert addTarget:self action:@selector(onFifthButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonFifthAlert];

    self.buttonSixthAlert = [[UIButton alloc] initWithFrame:CGRectMake(self.deviceWidth/2 + 2.5, 90 + (self.deviceHeight - 90)*2/3, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonSixthAlert.backgroundColor = [UIColor brownColor];
    [self.buttonSimpleAlert addTarget:self action:@selector(onSixthButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonSixthAlert];
}

#pragma mark - IBActions alerts

- (IBAction)onFirstButtonPressed:(UIButton *)sender
{
    UIView *viewBackgroundAlert = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.deviceWidth, self.deviceHeight)];
    viewBackgroundAlert.backgroundColor = [UIColor blackColor];
    viewBackgroundAlert.alpha = 0.75;
    [self.view addSubview:viewBackgroundAlert];

    UIView *firstAlert = [[UIView alloc] initWithFrame:CGRectMake(50, self.deviceHeight/3 + 30, self.deviceWidth - 100, 150)];
    firstAlert.backgroundColor = [UIColor colorWithRed:0.73 green:0.27 blue:0.46 alpha:1];
    firstAlert.layer.cornerRadius = 7;
    firstAlert.clipsToBounds = YES;
    [self.view addSubview:firstAlert];

    UILabel *labelBodyAlert = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, firstAlert.frame.size.width - 30, firstAlert.frame.size.height - 50)];
    labelBodyAlert.text = @"This is the very first and most simple alert";
    labelBodyAlert.textAlignment = NSTextAlignmentCenter;
    labelBodyAlert.numberOfLines = 10;
    [labelBodyAlert sizeToFit];
    CGRect labelRect = labelBodyAlert.frame;
    firstAlert.frame = CGRectMake(50, (self.deviceHeight - (labelRect.size.height + 50 + 50))/2, self.deviceWidth - 100, labelRect.size.height + 50 + 50);
    labelBodyAlert.frame = CGRectMake(15, (firstAlert.frame.size.height -  labelRect.size.height - 50)/2, labelRect.size.width, labelRect.size.height);
    [firstAlert addSubview:labelBodyAlert];

    UIButton *buttonDismissAlert = [[UIButton alloc] initWithFrame:CGRectMake(0, firstAlert.frame.size.height - 50, firstAlert.frame.size.width, 50)];
    buttonDismissAlert.backgroundColor = [UIColor blackColor];
    [buttonDismissAlert setTitle:@"Dismiss" forState:UIControlStateNormal];
    buttonDismissAlert.alpha = 0.3;
    [firstAlert addSubview:buttonDismissAlert];

    firstAlert.transform = CGAffineTransformTranslate(CGAffineTransformMakeRotation(0), 50, -500);

    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:10 initialSpringVelocity:20 options:0 animations:^{
        firstAlert.transform = CGAffineTransformTranslate(CGAffineTransformMakeRotation(0), 0, 0);
    } completion:^(BOOL finished) {

    }];
}

- (IBAction)onSecondButtonPressed:(UIButton *)sender
{

}

- (IBAction)onThirdButtonPressed:(UIButton *)sender
{

}

- (IBAction)onFourthButtonPressed:(UIButton *)sender
{

}

- (IBAction)onFifthButtonPressed:(UIButton *)sender
{

}

- (IBAction)onSixthButtonPressed:(UIButton *)sender
{

}

@end
