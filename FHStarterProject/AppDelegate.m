//
//  AppDelegate.m
//  iOS-Template-App
//
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [FH initWithSuccess:^(FHResponse *response) {
    NSLog(@"initialized OK");
  } AndFailure:^(FHResponse *response) {
    NSLog(@"initialize fail, %@", response.rawResponseAsString);
  }];
  return YES;
}

@end
