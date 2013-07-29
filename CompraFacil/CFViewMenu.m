//
//  CFViewMenu.m
//  CompraFacil
//
//  Created by Pedro Farias Barbosa on 29/07/13.
//  Copyright (c) 2013 Pedro Farias Barbosa. All rights reserved.
//

#import "CFViewMenu.h"
#import "CFFluxControl.h"
#import "CFViewSupermercados.h"
#import "CFViewProdutos.h"
#import "CFViewController.h"
#import "CFViewListas.h"

@interface CFViewMenu ()

@end

@implementation CFViewMenu

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
-(void) viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (IBAction)btnPaginaInicial:(id)sender {
    [self startActivity:[[CFViewController alloc] init]];
}

- (IBAction)btnSupermercados:(id)sender {
    [self startActivity:[[CFViewSupermercados alloc] init]];
}

- (IBAction)btnProdutos:(id)sender {
    [self startActivity:[[CFViewProdutos alloc] init]];
}

- (IBAction)btnListasCompras:(id)sender {
    [self startActivity:[[CFViewListas alloc] init]];
}

- (void)startActivity:(UIViewController*)uiTarget{
    CFFluxControl *fControl = [[CFFluxControl alloc] init];
    [fControl startActivity:self uiTarget:uiTarget];
    [fControl release];
}

@end
