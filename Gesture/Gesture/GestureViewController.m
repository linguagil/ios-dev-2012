//
//  GestureViewController.m
//  Gesture
//
//  Created by Cleverson Sacramento on 27/08/12.
//  Copyright (c) 2012 Cleverson Sacramento. All rights reserved.
//

#import "GestureViewController.h"

@interface GestureViewController ()

@end

@implementation GestureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)pincou:(UIPinchGestureRecognizer *)sender {
    NSLog(@"%f", sender.scale);
}

@end
