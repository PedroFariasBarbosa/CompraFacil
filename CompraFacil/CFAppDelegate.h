//
//  CFAppDelegate.h
//  CompraFacil
//
//  Created by Pedro Farias Barbosa on 29/07/13.
//  Copyright (c) 2013 Pedro Farias Barbosa. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CFViewController;

@interface CFAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CFViewController *viewController;

@end
