//
//  TabelaViewController.h
//  Table
//
//  Created by Cleverson Sacramento on 28/08/12.
//  Copyright (c) 2012 Cleverson Sacramento. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetalheViewController.h"

@interface TabelaViewController : UITableViewController <DetalheDelegate> {
    NSMutableArray *_lista;
}

@end
