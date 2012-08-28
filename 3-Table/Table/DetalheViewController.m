//
//  DetalheViewController.m
//  Table
//
//  Created by Cleverson Sacramento on 28/08/12.
//  Copyright (c) 2012 Cleverson Sacramento. All rights reserved.
//

#import "DetalheViewController.h"

@interface DetalheViewController ()

@end

@implementation DetalheViewController

@synthesize campo;
@synthesize label;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.navigationController popViewControllerAnimated:YES];
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if(self.item) {
        self.title = @"Detalhe";
        self.label.text = self.item;
        self.campo.hidden = YES;

    } else {
        self.title = @"Novo";
        self.label.hidden = YES;
        [self.campo becomeFirstResponder];
    }
    
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    _item = nil;
    [self setLabel:nil];
    [self setCampo:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
