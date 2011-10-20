//
//  TCAppDelegate.m
//  touchid
//
//  Created by Joachim Bengtsson on 2011-10-20.
//  Copyright (c) 2011 Third Cog Software. All rights reserved.
//

#import "TCAppDelegate.h"

@interface TouchyWindow : UIWindow
@end
@implementation TouchyWindow
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
{
    NSLog(@"Began: %@", [[touches allObjects] valueForKeyPath:@"tc_uniqueId"]);
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
{
    NSLog(@"Moved: %@", [[touches allObjects] valueForKeyPath:@"tc_uniqueId"]);
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
{
    NSLog(@"Ended: %@", [[touches allObjects] valueForKeyPath:@"tc_uniqueId"]);
}
-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;
{
    NSLog(@"Cancelled: %@", [[touches allObjects] valueForKeyPath:@"tc_uniqueId"]);
}

@end

@implementation TCAppDelegate

@synthesize window = _window;

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[TouchyWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
