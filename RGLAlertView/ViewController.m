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
    UIView *firstAlert = [[UIView alloc] initWithFrame:CGRectMake(50, self.deviceHeight/3, self.deviceWidth - 100, 200)];
    firstAlert.backgroundColor = [UIColor whiteColor];
    firstAlert.layer.cornerRadius = 7;
    firstAlert.transform = CGAffineTransformTranslate(CGAffineTransformMakeRotation(M_PI/6), 0, -500);
    [self.view addSubview:firstAlert];

    [UIView animateWithDuration:1 delay:0 usingSpringWithDamping:500 initialSpringVelocity:10 options:0 animations:^{
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
