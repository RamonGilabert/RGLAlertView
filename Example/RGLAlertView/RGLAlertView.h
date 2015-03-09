#import <UIKit/UIKit.h>

@protocol RGLAlertViewDelegate

- (void)buttonDidPressedWithTitle:(NSString *)string;
- (void)buttonDismissDidPressed;

@end

@interface RGLAlertView : UIView

@property id <RGLAlertViewDelegate> delegate;
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

- (instancetype)initWithBodyMessage:(NSString *)stringText andDismissButtonText:(NSString *)dismissButtonText;
- (instancetype)initWithBodyMessage:(NSString *)stringText andDismissButtonText:(NSString *)dismissButtonText andBackgroundColor:(UIColor *)backgroundColor;

- (void)presentAlertViewWithAnimation:(int)animationOption;

- (void)setTitle:(NSString *)title;
- (void)setBody:(NSString *)body;
- (void)addButtonWithTitle:(NSString *)buttonTitle;
- (void)addImageInTop:(UIImage *)image;

@end
