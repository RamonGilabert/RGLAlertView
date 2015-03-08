#import <UIKit/UIKit.h>

@interface RGLAlertView : UIView

@property CGFloat deviceWidth;
@property CGFloat deviceHeight;
@property (strong, nonatomic) UIView *backgroundView;
@property (strong, nonatomic) UIView *alertView;
@property (strong, nonatomic) UIButton *buttonDismiss;

- (instancetype)initWithBodyMessage:(NSString *)stringText andDismissButtonText:(NSString *)dismissButtonText;

- (void)presentAlertViewWithAnimation:(NSUInteger)animationOption;

@end
