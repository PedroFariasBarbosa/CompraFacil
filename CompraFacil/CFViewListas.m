//
//  CFViewListas.m
//  CompraFacil
//
//  Created by Pedro Farias Barbosa on 29/07/13.
//  Copyright (c) 2013 Pedro Farias Barbosa. All rights reserved.
//

#import "CFViewListas.h"
#import "CFFluxControl.h"
#import "CFViewSupermercados.h"
#import "CFViewProdutos.h"
#import "CFViewMenu.h"

@interface CFViewListas ()

@end

@implementation CFViewListas

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
    self.title = @"Listas de Compra";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (IBAction)btnSupermercados:(id)sender {
    [self startActivity:[[CFViewSupermercados alloc]init]];
}

- (IBAction)btnProdutos:(id)sender {
    [self startActivity:[[CFViewProdutos alloc]init]];
}

- (IBAction)btnMenu:(id)sender {
    [self startActivity:[[CFViewMenu alloc]init]];
}

- (void)startActivity:(UIViewController*)uiTarget{
    CFFluxControl *fControl = [[CFFluxControl alloc] init];
    [fControl startActivity:self uiTarget:uiTarget];
    [fControl release];
}
@end
