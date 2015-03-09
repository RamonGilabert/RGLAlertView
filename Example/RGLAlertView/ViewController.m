#import "ViewController.h"
#import "RGLAlertView.h"

@interface ViewController () <RGLAlertViewDelegate>

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

    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.deviceWidth, 75)];
    headerView.backgroundColor = [UIColor colorWithRed:0.6 green:0.79 blue:0.33 alpha:1];
    [self.view addSubview:headerView];

    self.buttonSimpleAlert = [[UIButton alloc] initWithFrame:CGRectMake(0, 80, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonSimpleAlert.backgroundColor = [UIColor colorWithRed:0.71 green:0.91 blue:1 alpha:1];
    [self.buttonSimpleAlert setImage:[UIImage imageNamed:@"First"] forState:UIControlStateNormal];
    [self.buttonSimpleAlert addTarget:self action:@selector(onFirstButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonSimpleAlert];

    self.buttonSecondAlert = [[UIButton alloc] initWithFrame:CGRectMake(self.deviceWidth/2 + 2.5, 80, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonSecondAlert.backgroundColor = [UIColor colorWithRed:0.96 green:0.44 blue:0.27 alpha:1];
    [self.buttonSecondAlert setImage:[UIImage imageNamed:@"Second"] forState:UIControlStateNormal];
    [self.buttonSecondAlert addTarget:self action:@selector(onSecondButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonSecondAlert];

    self.buttonThirdAlert = [[UIButton alloc] initWithFrame:CGRectMake(0, 85 + (self.deviceHeight - 90)/3, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonThirdAlert.backgroundColor = [UIColor colorWithRed:0.93 green:0.38 blue:0.46 alpha:1];
    [self.buttonThirdAlert setImage:[UIImage imageNamed:@"Fourth"] forState:UIControlStateNormal];
    [self.buttonThirdAlert addTarget:self action:@selector(onThirdButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonThirdAlert];

    self.buttonFourthAlert = [[UIButton alloc] initWithFrame:CGRectMake(self.deviceWidth/2 + 2.5, 85 + (self.deviceHeight - 90)/3, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonFourthAlert.backgroundColor = [UIColor colorWithRed:0.97 green:0.84 blue:0.32 alpha:1];
    [self.buttonFourthAlert setImage:[UIImage imageNamed:@"Fifth"] forState:UIControlStateNormal];
    [self.buttonFourthAlert addTarget:self action:@selector(onFourthButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonFourthAlert];

    self.buttonFifthAlert = [[UIButton alloc] initWithFrame:CGRectMake(0, 90 + (self.deviceHeight - 90)*2/3, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonFifthAlert.backgroundColor = [UIColor colorWithRed:0.34 green:0.52 blue:0.89 alpha:1];
    [self.buttonFifthAlert setImage:[UIImage imageNamed:@"Sixth"] forState:UIControlStateNormal];
    [self.buttonFifthAlert addTarget:self action:@selector(onFifthButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonFifthAlert];

    self.buttonSixthAlert = [[UIButton alloc] initWithFrame:CGRectMake(self.deviceWidth/2 + 2.5, 90 + (self.deviceHeight - 90)*2/3, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonSixthAlert.backgroundColor = [UIColor colorWithRed:0.29 green:0.21 blue:0.28 alpha:1];
    [self.buttonSixthAlert setImage:[UIImage imageNamed:@"Third"] forState:UIControlStateNormal];
    [self.buttonSixthAlert addTarget:self action:@selector(onSixthButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.buttonSixthAlert];
}

#pragma mark - IBActions alerts

- (IBAction)onFirstButtonPressed:(UIButton *)sender
{
    RGLAlertView *view = [[RGLAlertView alloc] initWithBodyMessage:@"This is the very first and most simple alert" andDismissButtonText:@"Dismiss" andBackgroundColor:[UIColor colorWithRed:0.96 green:0.44 blue:0.27 alpha:1]];
    [view presentAlertViewWithAnimation:0];
}

- (IBAction)onSecondButtonPressed:(UIButton *)sender
{
    RGLAlertView *view = [[RGLAlertView alloc] initWithBodyMessage:@"This is an alert view with a title" andDismissButtonText:@"Dismiss"];
    [view setTitle:@"Alert with title"];
    [view presentAlertViewWithAnimation:1];
}

- (IBAction)onThirdButtonPressed:(UIButton *)sender
{
    RGLAlertView *view = [[RGLAlertView alloc] initWithBodyMessage:@"This is an alert view with a title" andDismissButtonText:@"Dismiss" andBackgroundColor:[UIColor colorWithRed:0.6 green:0.79 blue:0.33 alpha:1]];
    [view setTitle:@"Alert with title"];
    [view setBody:@"Deep abundantly Abundantly appear, light heaven fruitful you're void make make abundantly said give. That gathering divided there unto behold"];
    [view addButtonWithTitle:@"Touch"];
    [view presentAlertViewWithAnimation:1];
}

- (IBAction)onFourthButtonPressed:(UIButton *)sender
{
    RGLAlertView *view = [[RGLAlertView alloc] initWithBodyMessage:@"This is an alert view with a title" andDismissButtonText:@"Dismiss" andBackgroundColor:[UIColor colorWithRed:0.9 green:0.3 blue:0.24 alpha:1]];
    [view setTitle:@"Alert with title"];
    [view setBody:@"Deep abundantly Abundantly appear, light heaven fruitful you're void make make abundantly said give. That gathering divided there unto behold."];
    [view addButtonWithTitle:@"Touch"];
    [view addImageInTop:[UIImage imageNamed:@"firstImage"]];
    [view presentAlertViewWithAnimation:0];
}

- (IBAction)onFifthButtonPressed:(UIButton *)sender
{
    RGLAlertView *view = [[RGLAlertView alloc] initWithBodyMessage:@"This is an alert view with a title" andDismissButtonText:@"Dismiss"];
    [view setTitle:@"Alert with title"];
    [view presentAlertViewWithAnimation:1];
}

- (IBAction)onSixthButtonPressed:(UIButton *)sender
{
    RGLAlertView *view = [[RGLAlertView alloc] initWithBodyMessage:@"This is to try the delegate" andDismissButtonText:@"Dismiss" andBackgroundColor:[UIColor colorWithRed:0.73 green:0.6 blue:0.51 alpha:1]];
    view.delegate = self;
    [view addButtonWithTitle:@"Touch"];
    [view presentAlertViewWithAnimation:1];
}

#pragma mark - Delegate methods

- (void)buttonDidPressedWithTitle:(NSString *)string
{
    NSLog(@"%@", string);
}

@end
