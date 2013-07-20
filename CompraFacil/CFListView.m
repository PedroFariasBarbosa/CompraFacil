//
//  CFListView.m
//  CompraFacil
//
//  Created by Pedro Farias Barbosa on 20/07/13.
//  Copyright (c) 2013 Pedro Farias Barbosa. All rights reserved.
//

#import "CFListView.h"
#import "CFItemListaCompra.h"

@interface CFListView ()

@end

@implementation CFListView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_listaCompras release];
    [super dealloc];
}

@end
