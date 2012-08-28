//
//  FundoView.m
//  Touch
//
//  Created by Cleverson Sacramento on 27/08/12.
//  Copyright (c) 2012 Cleverson Sacramento. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "FundoView.h"

@implementation FundoView

@synthesize coordenadas;
@synthesize caixa;

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationBeginsFromCurrentState:YES];
    
    [self touchesMoved:touches withEvent:event];
    
    [UIView commitAnimations];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    
    self.caixa.layer.cornerRadius = 20;
    self.caixa.center = point;
    
    NSString *texto = [NSString stringWithFormat:@"%0.0f x %0.0f", point.x, point.y];
    self.coordenadas.text = texto;
    
    NSLog(@"%@", texto);
}

@end
