//
//  ItemManager.h
//  Table
//
//  Created by Cleverson Sacramento on 29/08/12.
//  Copyright (c) 2012 Cleverson Sacramento. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Item.h"

@interface ItemManager : NSObject

+ (NSArray *)obterTodos;
+ (void)persistirItem:(Item *)item;
+ (void)removerItem:(Item *)item;

@end
