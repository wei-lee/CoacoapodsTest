//
//  HomeViewController.m
//  iOS-Template-App
//
//

#import "FHStarterProjectViewController.h"

@interface FHStarterProjectViewController ()

@end

@implementation FHStarterProjectViewController

@synthesize button, name, result;

- (void)viewDidLoad {
  [super viewDidLoad];
}


- (IBAction)cloudCall:(id)sender {
  NSDictionary *args = [NSDictionary dictionaryWithObject:name.text forKey:@"hello"];
  FHCloudRequest *req = (FHCloudRequest *) [FH buildCloudRequest:@"/hello" WithMethod:@"POST" AndHeaders:nil AndArgs:args];
  
  [req execAsyncWithSuccess:^(FHResponse * res) {
    // Response
    NSLog(@"Response: %@", res.rawResponseAsString);
    result.text = [res.parsedResponse objectForKey:@"msg"];
  } AndFailure:^(FHResponse * res){
    // Errors
    NSLog(@"Failed to call. Response = %@", res.rawResponseAsString);
    result.text = res.rawResponseAsString;
  }];
}

@end

