#import <UIKit/UIKit.h>

@interface RGLAlertView : UIView

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

- (instancetype)initWithBodyMessage:(NSString *)stringText andDismissButtonText:(NSString *)dismissButtonText;
- (instancetype)initWithBodyMessage:(NSString *)stringText andDismissButtonText:(NSString *)dismissButtonText andBackgroundColor:(UIColor *)backgroundColor;

- (void)presentAlertViewWithAnimation:(NSUInteger)animationOption;

- (void)setTitle:(NSString *)title;
- (void)setBody:(NSString *)body;
- (void)addButtonWithTitle:(NSString *)buttonTitle;
- (void)addImageInTop:(UIImage *)image;

@end