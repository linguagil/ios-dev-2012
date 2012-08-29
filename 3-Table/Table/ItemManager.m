//
//  ItemManager.m
//  Table
//
//  Created by Cleverson Sacramento on 29/08/12.
//  Copyright (c) 2012 Cleverson Sacramento. All rights reserved.
//

#import "ItemManager.h"

@implementation ItemManager

+ (NSArray *)obterTodos
{
    NSMutableArray *result = [[NSMutableArray alloc] init];

    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSArray *dictionaries = [userDefaults objectForKey:@"itens"];

    Item *item;

    for(NSDictionary *dictionary in dictionaries) {
        item = [[Item alloc] init];
        [item setValuesForKeysWithDictionary:dictionary];

        [result addObject:item];
    }
    
    return result;
}

+ (void)persistirItem:(Item *)item
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *dictionaries = [userDefaults objectForKey:@"itens"];

    if (!dictionaries){
        dictionaries = [[NSMutableArray alloc] init];
    } else {
        dictionaries = [dictionaries mutableCopy];
    }
    
    NSDictionary *dictionary = [item dictionaryWithValuesForKeys:@[@"nome"]];
    [dictionaries addObject:dictionary];
    
    [userDefaults setValue:dictionaries forKey:@"itens"];
    [userDefaults synchronize];
}

@end
