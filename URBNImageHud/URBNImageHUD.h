
#import <UIKit/UIKit.h>
#import <AvailabilityMacros.h>

enum {
    URBNImageHUDMaskTypeNone = 1, // allow user interactions while HUD is displayed
    URBNImageHUDMaskTypeClear, // don't allow
    URBNImageHUDMaskTypeBlack, // don't allow and dim the UI in the back of the HUD
    URBNImageHUDMaskTypeGradient // don't allow and dim the UI with a a-la-alert-view bg gradient
};

typedef NSUInteger URBNImageHUDMaskType;

@interface URBNImageHUD : UIView

#pragma mark - Customization

+ (void)setBackgroundColor:(UIColor*)color; // default is [UIColor whiteColor]
+ (void)setForegroundColor:(UIColor*)color; // default is [UIColor blackColor]
+ (void)setFont:(UIFont*)font; // default is [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline]

+ (void)setAnimationImage:(UIImage*)image; // REQUIRED!
+ (void)setImageAnimationDuration:(NSTimeInterval)animationDuration; //default is 1.0

#pragma mark - Show Methods

+ (void)show;
+ (void)showWithMaskType:(URBNImageHUDMaskType)maskType;
+ (void)showWithStatus:(NSString*)status;
+ (void)showWithStatus:(NSString*)status maskType:(URBNImageHUDMaskType)maskType;

+ (void)setStatus:(NSString*)string; // change the HUD loading status while it's showing

// stops the activity indicator, shows a glyph + status, and dismisses HUD 1s later
+ (void)showImage:(UIImage*)image status:(NSString*)status; // use 28x28 white pngs

+ (void)setOffsetFromCenter:(UIOffset)offset;
+ (void)resetOffsetFromCenter;

+ (void)popActivity;
+ (void)dismiss;

+ (BOOL)isVisible;

@end
