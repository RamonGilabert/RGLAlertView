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
    [self.view addSubview:self.buttonSimpleAlert];

    self.buttonSecondAlert = [[UIButton alloc] initWithFrame:CGRectMake(self.deviceWidth/2 + 2.5, 80, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonSecondAlert.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.buttonSecondAlert];

    self.buttonThirdAlert = [[UIButton alloc] initWithFrame:CGRectMake(0, 85 + (self.deviceHeight - 90)/3, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonThirdAlert.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.buttonThirdAlert];

    self.buttonFourthAlert = [[UIButton alloc] initWithFrame:CGRectMake(self.deviceWidth/2 + 2.5, 85 + (self.deviceHeight - 90)/3, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonFourthAlert.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.buttonFourthAlert];

    self.buttonFifthAlert = [[UIButton alloc] initWithFrame:CGRectMake(0, 90 + (self.deviceHeight - 90)*2/3, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonFifthAlert.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.buttonFifthAlert];

    self.buttonSixthAlert = [[UIButton alloc] initWithFrame:CGRectMake(self.deviceWidth/2 + 2.5, 90 + (self.deviceHeight - 90)*2/3, self.deviceWidth/2 - 1.25, (self.deviceHeight - 90)/3)];
    self.buttonSixthAlert.backgroundColor = [UIColor brownColor];
    [self.view addSubview:self.buttonSixthAlert];
}



@end
