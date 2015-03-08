#import <UIKit/UIKit.h>

@interface RGLAlertView : UIViewController

@property CGFloat deviceWidth;
@property CGFloat deviceHeight;

- (instancetype)initWithBodyMessage:(NSString *)stringText andDismissButtonText:(NSString *)dismissButtonText;

- (void)presentAlertViewWithAnimation:(NSUInteger)animationOption;

@end
