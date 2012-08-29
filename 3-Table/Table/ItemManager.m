//
//  ItemManager.m
//  Table
//
//  Created by Cleverson Sacramento on 29/08/12.
//  Copyright (c) 2012 Cleverson Sacramento. All rights reserved.
//

#import "ItemManager.h"

@interface ItemManager ()

+ (NSMutableArray *)itens;

@end

@implementation ItemManager

+ (NSMutableArray *)itens
{
    static NSMutableArray *_itens;
    
    if(!_itens) {
        _itens = [[NSMutableArray alloc] init];
        
        Item *item;
        
        item = [[Item alloc] init];
        item.nome = @"LinguÁgil 2012";
        [_itens addObject:item];
        
        item = [[Item alloc] init];
        item.nome = @"iOS Dev Bahia";
        [_itens addObject:item];
        
        item = [[Item alloc] init];
        item.nome = @"UCSal";
        [_itens addObject:item];
    }
    
    return _itens;
}

+ (NSArray *)obterTodos
{
    return [self itens];
}

+ (void)persistirItem:(Item *)item
{
    [[self itens] addObject:item];
}

@end
