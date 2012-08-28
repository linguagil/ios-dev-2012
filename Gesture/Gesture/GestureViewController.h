//
//  GestureViewController.h
//  Gesture
//
//  Created by Cleverson Sacramento on 27/08/12.
//  Copyright (c) 2012 Cleverson Sacramento. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GestureViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *caixa;

- (IBAction)pincou:(UIPinchGestureRecognizer *)sender;

@end
