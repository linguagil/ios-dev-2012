//
//  DetalheViewController.h
//  Table
//
//  Created by Cleverson Sacramento on 28/08/12.
//  Copyright (c) 2012 Cleverson Sacramento. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DetalheDelegate <NSObject>

- (NSString *)itemSelecionado;
- (void)adicionarItem:(NSString *)item;

@end


@interface DetalheViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) id <DetalheDelegate> delegate;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *campo;

@end
