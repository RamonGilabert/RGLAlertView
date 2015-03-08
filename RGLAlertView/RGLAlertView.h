#import <UIKit/UIKit.h>

@interface RGLAlertView : UIView

@property CGFloat deviceWidth;
@property CGFloat deviceHeight;
@property (strong, nonatomic) UIView *backgroundView;
@property (strong, nonatomic) UIView *alertView;
@property (strong, nonatomic) UILabel *labelTitle;
@property (strong, nonatomic) UILabel *labelBody;
@property (strong, nonatomic) UIButton *buttonDismiss;
@property (strong, nonatomic) NSMutableArray *arrayOfButtons;
@property (strong, nonatomic) UIColor *backgroundColor;

- (instancetype)initWithBodyMessage:(NSString *)stringText andDismissButtonText:(NSString *)dismissButtonText;
- (instancetype)initWithBodyMessage:(NSString *)stringText andDismissButtonText:(NSString *)dismissButtonText andBackgroundColor:(UIColor *)backgroundColor;

- (void)presentAlertViewWithAnimation:(NSUInteger)animationOption;

- (void)setTitle:(NSString *)title;
- (void)setBody:(NSString *)body;
- (void)addDismissButton:(NSString *)buttonTitle;
- (void)addButtonWithTitle:(NSString *)buttonTitle;
- (void)addTextFieldWithPlaceholder:(NSString *)textField;
- (void)addImageInTop:(UIImage *)image;

@end
