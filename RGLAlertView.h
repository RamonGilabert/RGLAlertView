#import <UIKit/UIKit.h>

@protocol RGLAlertViewDelegate <NSObject>

@optional

- (void)buttonDidPressedWithTitle:(NSString *)string;
- (void)buttonDismissDidPressed;

@end

@interface RGLAlertView : UIView

@property (weak, nonatomic) id <RGLAlertViewDelegate> delegate;

- (instancetype)initWithBodyMessage:(NSString *)stringText andDismissButtonText:(NSString *)dismissButtonText;
- (instancetype)initWithBodyMessage:(NSString *)stringText andDismissButtonText:(NSString *)dismissButtonText andBackgroundColor:(UIColor *)backgroundColor;

- (void)presentAlertViewWithAnimation:(int)animationOption;

- (void)setTitle:(NSString *)title;
- (void)setBody:(NSString *)body;
- (void)addButtonWithTitle:(NSString *)buttonTitle;
- (void)addImageInTop:(UIImage *)image;
- (void)onDismissButtonPressed;

@end
