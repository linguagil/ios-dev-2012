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

@synthesize caixa;

- (IBAction)pincou:(UIPinchGestureRecognizer *)sender {

    CGAffineTransform transform = CGAffineTransformScale(sender.view.transform, sender.scale, sender.scale);
    self.caixa.transform = transform;
    
    sender.scale = 1;
}

- (IBAction)girou:(UIRotationGestureRecognizer *)sender {
    CGAffineTransform transform = CGAffineTransformRotate(sender.view.transform, sender.rotation);
    self.caixa.transform = transform;
    
    sender.rotation = 0;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}

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
    [self setCaixa:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
