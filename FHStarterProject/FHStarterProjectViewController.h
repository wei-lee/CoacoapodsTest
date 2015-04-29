//
//  FHStarterProjectViewController.h
//  iOS-Template-App
//
//

#import <UIKit/UIKit.h>
#import <FH/FH.h>

@interface FHStarterProjectViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) IBOutlet UITextView *result;

- (IBAction)cloudCall:(id)sender;

@end
