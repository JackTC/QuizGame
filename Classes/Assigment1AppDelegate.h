//
//  Assigment1AppDelegate.h
//  Assigment1
//
//  Created by iit cct2 on 9/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Assigment1ViewController;

@interface Assigment1AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Assigment1ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Assigment1ViewController *viewController;

@end

