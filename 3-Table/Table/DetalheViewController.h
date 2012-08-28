//
//  DetalheViewController.h
//  Table
//
//  Created by Cleverson Sacramento on 28/08/12.
//  Copyright (c) 2012 Cleverson Sacramento. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetalheViewController : UIViewController <UITextFieldDelegate>

@property NSString* item;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *campo;

@end
