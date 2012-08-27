//
//  FundoView.m
//  Touch
//
//  Created by Cleverson Sacramento on 27/08/12.
//  Copyright (c) 2012 Cleverson Sacramento. All rights reserved.
//

#import "FundoView.h"

@implementation FundoView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    
    NSLog(@"%0.0f x %0.0f", point.x, point.y);
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self touchesBegan:touches withEvent:event];
}

@end
