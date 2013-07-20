//
//  CFListView.h
//  CompraFacil
//
//  Created by Pedro Farias Barbosa on 20/07/13.
//  Copyright (c) 2013 Pedro Farias Barbosa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CFListView : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *listaComprasArray;
}
@property (retain, nonatomic) IBOutlet UITableView *listaCompras;

@end
