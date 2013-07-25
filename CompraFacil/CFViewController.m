//
//  CFViewController.m
//  CompraFacil
//
//  Created by Pedro Farias Barbosa on 13/07/13.
//  Copyright (c) 2013 Pedro Farias Barbosa. All rights reserved.
//

#import "CFViewController.h"
#import "CFFluxControl.h"

#import "CFMenuController.h"
#import "CFEstabelecimentosView.h"
#import "CFProdutosViewController.h"

@interface CFViewController ()

@end

@implementation CFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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
- (void)dealloc {
    [super dealloc];
}
- (IBAction)btnBarSupermercados:(id)sender {
    [self startActivity:[[CFProdutosViewController alloc] init]];
}

- (IBAction)btnBarProdutos:(id)sender {
    [self startActivity:[[CFEstabelecimentosView alloc] init]];
}

- (IBAction)btnBarMenu:(id)sender {
    [self startActivity:[[CFMenuController alloc] init]];
}

- (void)startActivity:(UIViewController*)uiTarget{
    CFFluxControl *fControl = [[CFFluxControl alloc] init];
    [fControl startActivity:self uiTarget:uiTarget];
    [fControl release];
}

@end
